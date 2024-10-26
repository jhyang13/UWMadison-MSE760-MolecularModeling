#!/bin/bash


PW_COMMAND="pw.x"
PH_COMMAND="ph.x"

NAME="alas"
ECHO="echo"
alat=10.50
cutoff=16
 
# self-consistent calculation
cat > $NAME.scf.in << EOF
 &control
    calculation='scf'
    restart_mode='from_scratch',
    prefix='$NAME',
    pseudo_dir = '..//',
 /
 &system    
    ibrav=  2, 
    celldm(1) =$alat, 
    nat=  2, 
    ntyp= 2,
    ecutwfc =$cutoff
 /
 &electrons
    conv_thr =  1.0d-10
 /
ATOMIC_SPECIES
 Al  26.98  Al.pz-vbc.UPF
 As  74.92  As.pz-bhs.UPF
ATOMIC_POSITIONS
 Al 0.00 0.00 0.00
 As 0.25 0.25 0.25
K_POINTS AUTOMATIC
4 4 4 1 1 1
EOF
$ECHO "  running the scf calculation..."
$PW_COMMAND < $NAME.scf.in > $NAME.scf.out

# phonons
cat > $NAME.phG.in << EOF
phonons at Gamma
 &inputph
   prefix='$NAME',
   epsil=.true.,
   fildyn='dyn.G',
   tr2_ph=1.0d-14,
 /
0.0 0.0 0.0
EOF
$ECHO "  running the phonon calculation..."
$PH_COMMAND < $NAME.phG.in > $NAME.phG.out

