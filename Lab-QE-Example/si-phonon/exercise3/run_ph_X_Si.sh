#!/bin/bash


#ESPRESSO_DIR="/home/bonini/PW/qe-cvs-08-07-2009/q-e-scm-2009-07-08/espresso"
PSEUDO_DIR="../"
TMP_DIR="./"

PW_COMMAND="pw.x"
PH_COMMAND="ph.x"

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
cat > $NAME.phX.in << EOF
phonons at X
 &inputph
   outdir='$TMP_DIR/',
   prefix='$NAME',
   fildyn='dyn.X',
   tr2_ph=1.0d-14,
 /
0.0 0.0 1.0
EOF
$ECHO "  running the phonon calculation..."
$PH_COMMAND < $NAME.phX.in > $NAME.phX.out

