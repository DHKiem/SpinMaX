---
title: HowToUSE
author: Do Hoon Kiem
date: 2024-05-01
category: Jekyll
layout: post
---

For the calculation, `import SpinMax` in julia REPL.
```julia
$ julia
julia> import SpinMax
```

A recommendation is using `magnon_input.jl` file as described in `example`. It contains input parameters for lattice information, band paths, and computational options etc.
Then, run the `magnon_input.jl`.
```bash
$ julia magnon_input.jl
```

For a parallel computing, `Distributed` package is used. 
```julia
$ julia -p 4
julia> using Distributed
julia> @everywhere import SpinMax
```
Tip) Parallelization is recommended for large number of spins.


