---
title: Example3 NiO
author: Do Hoon Kiem
date: 2024-05-01
category: Jekyll
layout: post
---

In this example, bcc-Fe will be described. The exchange interactions can be taken from `Jx.jl` output as csv files. The converting function is `SpinMax.jx_exchange_col(root_dir, system_name, atom_sets)`.   

* root_dir: root directory where the csv files exist. In this example, current directory ("./jx2.col.spin_0.0")  
* system_name: the system name of the existing calculation. e.g. "Fe"  
* atom_sets: atom groups considered in the `SpinMax` calculation.   

### how to get exchange
The exchange interactions can be read from csv files after `Jx.jl` calculation. If you got the csv files in your current directory, the exchanges couplings can be included as follows
```julia
exchanges = SpinMax.jx_exchange_col("./jx2.col.spin_0.0/","Fe",[
             [1,1],
             ])
```
[1,1]: [atom1, atom2]

This command opens csv file in './jx2.col.spin_0.0/' with the target name with 'Fe' and [1,1] atoms. 
./jx2.col.spin_0.0/jx2.col.spin_Fe_atomij_1_1_[all_all]_ChemPdelta_0.0.csv'


### make `magnon_input.jl`
A script making `magnon_input.jl` is provided. 
```bash
julia $SpinMaxRoot/src/Jx_to_SpinMax.jl --atom1 1 --atom2 1 ./jx2.col.spin_0.0 bcc-Fe.toml
```

* --atom1 : target atom1 
* --atom2 : target atom2
* ./jx2.col.spin_0.0 : where jld2, csv files exist
* bcc-Fe.toml : toml file containing k_paths and k_grids


After the generation, you can fix kpaths and kgrids.

### `magnon_input.jl`
```julia
import SpinMax

NumAtom = 1

lattice_vec =
[[1.4349999996802474, 1.4349999996802474, -1.4349999996802474], 
[-1.4349999996802474, 1.4349999996802474, 1.4349999996802474], 
[1.4349999996802474, -1.4349999996802474, 1.4349999996802474]]

AtomPosSpins = [
[[0.0, 0.0, 0.0], [1.0], [0.0, 0.0]],
]

#[atom1, atom2], [a1,a2,a3], [J1,J2,J3,J4,J5,J6,J7,J8,J9]
exchanges = SpinMax.jx_exchange_col("./jx2.col.spin_0.0/","Fe",[
             [1,1],
             ])


kpaths = [
    20.0 0.0  0.0  0.0   0.5 -0.5  0.5
    20.0 0.5 -0.5  0.5   0.0  0.0  0.5 
    20.0 0.0  0.0  0.5   0.0  0.0  0.0 
    20.0 0.0  0.0  0.0   0.25 0.25 0.25
    20.0 0.25 0.25 0.25  0.5 -0.5  0.5
    20.0 0.25 0.25 0.25  0.0  0.0  0.5
    ]

kgrids = [21, 21, 21]

# magnon band calculation
SpinMax.band(lattice_vec, NumAtom, AtomPosSpins, exchanges, kpaths)

# magnon dos calculation
SpinMax.dos(lattice_vec, NumAtom, AtomPosSpins, exchanges, kgrids, Emin = 0.0, Emax = 600.0, Egrid = 1)
```