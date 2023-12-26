# SpinMax.jl
SpinMax: Spin Magnon atomistic eXchange interaction

![Julia1.6](https://img.shields.io/badge/Julia-1.6-blue.svg?longCache=true)
![Julia1.7](https://img.shields.io/badge/Julia-1.7-blue.svg?longCache=true)
![Julia1.8](https://img.shields.io/badge/Julia-1.8-blue.svg?longCache=true)
![Julia1.9](https://img.shields.io/badge/Julia-1.9-blue.svg?longCache=true)

# SpinMax.jl
`SpinMax.jl` is a software for calculating magnon dispersions, spectra, and topology based on linear spin wave theory using Holstein-Primakoff transformation. Its quasi-particle excitations are described in a bosonic basis. 

This magnonic excitation is calculated with 'spin lattice information' and 'magnetic exchange interactions'. Of course, the magnetic exchange interaction can be manually identified by users.

Another way to establish the exchange interactions is 'magnetic force theorem' or 'magnetic force linear response theory' (MFT) method. 
`SpinMax.jl` supports the interface conneting to [`jx.jl`](https://kaist-elst.github.io/Jx.jl/), which is supporting MFT from electronic structure calculations (openMX, openMX-Wannier, Wannier90, LOBSTER, ecalJ-QSGW).

`SpinMax.jl` is written based in Julia language. `SpinMax.jl` is tested under Julia ver. 1.6-1.9.

##### Developer: [Do Hoon Kiem](https://dhkiem.github.io/) 

## Capability and features
#### Physical features
* Exchange interactions as full tensors including Heisenberg, DMI, Kitaev-Γ
* Single-ion anisotropy
* Arbitrary spin angles using Euler rotation
* Magnon band dispersion
* Spectra (k,E-resolved Correlation function)
* Density of states
* Berry curvature and Chern number calculation

#### Computational Utilities
* Compatible with MFT package `Jx.jl` outputs
* Checking Hermitian
* Parallel computing 
* Both for REPL and Command lines
* Plotting tools


## Installation 

The code will be open soon.
### git clone
```bash
$ git clone https://github.com/DHKiem/SpinMaX_dev.jl.git
$ cd SpinMax_dev.jl
$ julia ./install_spinmax.jl
```

or

### add in julia REPL
``` bash
$ julia
] add https://github.com/DHKiem/SpinMax_dev.jl
```



## How to USE
For the calculation, `import SpinMax` in julia REPL.
```
$ julia
julia> import SpinMax
```

A recommendation is using `magnon_input.jl` file as described in `example`. It contains input parameters for lattice information, band paths, and computational options etc.
Then, run the `magnon_input.jl`.
```bash
$ julia magnon_input.jl
```

For a parallel computing, `Distributed` package is used. 
```
$ julia -p 4
julia> using Distributed
julia> @everywhere import SpinMax
```
Tip) Parallelization is recommended for large number of spins.

