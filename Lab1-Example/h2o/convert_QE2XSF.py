#!/usr/bin/env python

import sys
import ase.io

ase.io.write('structure.xsf',ase.io.read('relax.out' ,index='-1'))
