---
title: Example3 NiO
author: Do Hoon Kiem
date: 2024-05-01
category: Jekyll
layout: post
---

In this example, NiO will be treated. The exchange interactions can be taken from `Jx.jl` output as csv files. The converting function is `SpinMax.jx_exchange_col(root_dir, system_name, atom_sets)`.   

root_dir: root directory where the csv files exist. In this example, current directory ("./")  
system_name: the system name of the existing calculation. e.g. "nio"  
atom_sets: atom groups considered in the `SpinMax` calculation.   

### how to get exchange
The exchange interactions can be read from csv files after `Jx.jl` calculation. If you got the csv files in your current directory, the exchanges couplings can be included as follows
```julia
exchanges = SpinMax.jx_exchange_col("./","nio",[
             [1,1], [1,2], [2,1], [2,2],
             ])
```

### make `magnon_input.jl`
A script making `magnon_input.jl` is provided. 
```bash
julia $SpinMaxRoot/src/Jx_to_SpinMax.jl --atom1 1,2 --atom2 1,2 ./
```

--atom1 : target atom1 
--atom2 : target atom2
./ : current directory (where jld2 files exist)


After the generation, you can fix kpaths and kgrids.

### `magnon_input.jl`
```julia

import SpinMax

NumAtom = 2  ## number of magnetic sites

lattice_vec = [
    [4.1799999990685945, 2.0899999995342973, 2.0899999995342973], 
    [2.0899999995342973, 4.1799999990685945, 2.0899999995342973], 
    [2.0899999995342973, 2.0899999995342973, 4.1799999990685945]
    ]

AtomPosSpins = [
[[0.0, 0.0, 0.0], [1.0], [0.0, 0.0]],
[[0.5, 0.5, 0.5], [1.0], [0.0, 0.0]],
]

#[atom1, atom2], [a1,a2,a3], [J1,J2,J3,J4,J5,J6,J7,J8,J9]
exchanges = SpinMax.jx_exchange_col("./","nio",[
             [1,1], [1,2], [2,1], [2,2],
             ])

kpaths = [
40  0.0 0.0 0.5  0.0 0.5 0.0   #Z' Y
40  0.0 0.5 0.0  0.5 0.0 0.0   #Y X
40  0.5 0.0 0.0  0.0 0.0 0.0   #X G
40  0.0 0.0 0.0  0.5 0.5 0.5   #G Z
40  0.5 0.5 0.5  0.8125 0.34375 0.34375   #Z K
40  0.8125 0.34375 0.34375  0.1875 -0.34375 -0.34375   #K U
]

kgrids = [21,21,21]

SpinMax.band(lattice_vec, NumAtom, AtomPosSpins, exchanges, kpaths)
```