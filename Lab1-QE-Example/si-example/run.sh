#!/bin/bash
pw.x < scf.in > scf.out
pw.x < nscf.in > nscf.out
bands.x < bands.in > bands.out
plotband.x < plotband.in > plotband.out
pw.x < nscf-dos.in > nscf-dos.out
dos.x < dos.in > dos.out
