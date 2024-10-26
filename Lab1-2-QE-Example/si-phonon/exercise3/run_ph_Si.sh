#!/bin/bash


#ESPRESSO_DIR="/home/bonini/PW/qe-cvs-08-07-2009/q-e-scm-2009-07-08/espresso"
PSEUDO_DIR="../"
TMP_DIR="./"

PW_COMMAND="pw.x"
PH_COMMAND="ph.x"

#PW_COMMAND="$ESPRESSO_DIR/bin/pw.x"
#PH_COMMAND="$ESPRESSO_DIR/bin/ph.x"

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
    conv_thr =  1.0d-10
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

# phonons
cat > $NAME.ph.in << EOF
phonons at Gamma
 &inputph
   outdir='$TMP_DIR/',
   prefix='$NAME',
   epsil=.true.,
   ldisp=.true.
   fildyn='dyn',
   nq1=4,
   nq2=4,
   nq3=4,
   tr2_ph=1.0d-14,
 /
0.0 0.0 0.0
EOF
$ECHO "  running the phonon calculation..."
$PH_COMMAND < $NAME.ph.in > $NAME.ph.out

