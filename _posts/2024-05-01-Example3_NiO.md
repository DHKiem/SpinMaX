---
title: Example1 1D FM Chain
author: Do Hoon Kiem
date: 2024-05-01
category: Jekyll
layout: post
---

The exchange interactions can be taken from `Jx.jl` output as csv files. The converting function is `SpinMax.jx_col(filename, fm)`. If two spins have ferromagnetic configuration, the last argument 'fm' is refered as 1. For an antiferromagnet, fm = -1.

```julia
#[atom1, atom2], [a1,a2,a3], [J1,J2,J3,J4,J5,J6,J7,J8,J9]
exchanges = [
    SpinMax.jx_col("jx2.col.spin_nio_atomij_1_1_[all_all]_ChemPdelta_0.0.csv",1),
    SpinMax.jx_col("jx2.col.spin_nio_atomij_1_2_[all_all]_ChemPdelta_0.0.csv",-1),
    SpinMax.jx_col("jx2.col.spin_nio_atomij_2_1_[all_all]_ChemPdelta_0.0.csv",-1),
    SpinMax.jx_col("jx2.col.spin_nio_atomij_2_2_[all_all]_ChemPdelta_0.0.csv",1)
]
```