![Julia1.6](https://img.shields.io/badge/Julia-1.6-blue.svg?longCache=true)

# SpinMaX.jl
`SpinMax.jl` is the software for calculating magnon dispersion, spectra, and topology based on 'quantum mechanical' linear spin wave theory. Its quasi-particle excitations are described in a bosonic basis. 
This magnonic excitation is calculated with 'spin lattice information' and 'magnetic exchange interactions'. Of course, the magnetic exchange interaction can be manually identified by users.
Another way to establish the exchange interaction is 'magnetic force theorem' or 'magnetic force linear response theory' (MFT) method. 
`SpinMax.jl` provides the interface conneting to [`jx.jl`](https://kaist-elst.github.io/Jx.jl/), which is supporting MFT from electronic structure calculations (openMX, openMX-Wannier, Wannier90, QSGW).


##### Developer: [Do Hoon Kiem](https://dhkiem.github.io/) 

## Capability
* Band dispersion
* k,E-resolved Correlation function 
* Density of states 
* Berry curvature and Chern number calculation

## Installation 

* git clone Will be opened
```bash
$ cd SpinMax.jl
$ julia ./install_SpinMax.jl
```

## USE
For the calculation, `import SpinMax` in julia REPL.
Recommendation is using `magnon_input.jl` file. It contains input parameters for lattice information, band paths, and computational options etc.
Then, run the `magnon_input.jl`.
```bash
$ julia magnon_input.jl
```



## Example
### 1D FM chain
* This section describes the example calculation. The first example is a 1D FM chain. 

```
# 1D FM chain

import SpinMax

lattice_vec = [
[1,0,0],
[0,1,0],
[0,0,1],
]

NumAtom = 1
AtomPosSpins = [
[[0,0,0]    ,[1],[0,0]], # cell, spin, [theta,phi]
]

#[atom1, atom2], [a1,a2,a3], [J1,J2,J3,J4,J5,J6,J7,J8,J9]
exchanges = [
[[1,1],  [-1,0,0],  [-1/2 0 0; 0  -1/2 0; 0 0 -1/2]],
[[1,1],  [+1,0,0],  [-1/2 0 0; 0  -1/2 0; 0 0 -1/2]],
]

#single-ion anisotropy
anisotropy_K = [ 
  [[1], [0 0 0 ; 0 0 0; 0 0 0]],
]

kpaths = [
 10   -0.5 0.0 0.0   0.0 0.0 0.0
 10    0.0 0.0 0.0   0.5 0.0 0.0
]

SpinMax.band(lattice_vec, NumAtom, AtomPosSpins, exchanges, anisotropy_K, kpaths)
```

``` bash
python plot_example.py
```

![1DFM](./docs/fig/1DFM.png)

### NiO (combined with Jx.jl)


### Honeycomb lattice with DMI


