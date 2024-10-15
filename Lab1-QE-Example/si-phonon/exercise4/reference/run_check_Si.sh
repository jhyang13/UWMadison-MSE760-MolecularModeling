#!/bin/bash

PROG_DIR="/home/bonini/PW/qe-cvs-08-07-2009/q-e-scm-2009-07-08/espresso"
PSEUDO_DIR="../"
TMP_DIR="tmp"

PW_COMMAND="$PROG_DIR/bin/pw.x"
PH_COMMAND="$PROG_DIR/bin/ph.x"

NAME="si"
ECHO="echo"
alat=10.187
cutoff=16
 
# self-consistent calculation
cat > $NAME.scf.in << EOF
 &control
    calculation='scf'
    restart_mode='from_scratch',
    prefix='$NAME',
    pseudo_dir = '$PSEUDO_DIR/',
    outdir='$TMP_DIR/'
 /
 &system    
    ibrav=  2, 
    celldm(1) =$alat, 
    nat=  2, 
    ntyp= 1,
    ecutwfc =$cutoff
 /
 &electrons
    conv_thr =  1.0d-10,
 /
ATOMIC_SPECIES
 Si  0.0  Si.pz-rrkj.UPF
ATOMIC_POSITIONS
 Si 0.00 0.00 0.00 
 Si 0.25 0.25 0.25 
K_POINTS AUTOMATIC
4 4 4 1 1 1
EOF
$ECHO "  running the scf calculation..."
$PW_COMMAND < $NAME.scf.in > $NAME.scf.out

qpoints="0.2,0.0,0.0\
         0.4,0.0,0.0\
         0.5,0.0,0.0\
         0.6,0.0,0.0\
         0.8,0.0,0.0\
         0.2,0.2,0.2\
         0.4,0.4,0.4\
         0.5,0.5,0.5"

xq="0.2,0.4,0.5,0.6,0.8,3.7606,4.1070,4.2802"

let i=0

for qpoint in $qpoints ; do

i=`expr $i + 1`

# phonon calculation
cat > $NAME.ph.in << EOF
phonons of Si at $qpoint
 &inputph
  prefix='$NAME',
  outdir='$TMP_DIR/',

  lnscf=.true.,

  fildyn='dyn.$qpoint'
  tr2_ph=1.0d-14,
 /
$qpoint
EOF
$ECHO "  running the phonon calculation at q=$qpoint..."
$PH_COMMAND < $NAME.ph.in >> $NAME.ph.out

xc=`echo $xq | cut -d, -f$i`
for j in `seq 1 6` ; do
   freq=`grep omega dyn.$qpoint | head -$j | tail -1 | cut -c 40- | cut -c -16`
   echo $xc $freq >> frequencies.dat
done

done

