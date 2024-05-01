

![Julia1.6](https://img.shields.io/badge/Julia-1.6-blue.svg?longCache=true)
![Julia1.7](https://img.shields.io/badge/Julia-1.7-blue.svg?longCache=true)
![Julia1.8](https://img.shields.io/badge/Julia-1.8-blue.svg?longCache=true)
![Julia1.9](https://img.shields.io/badge/Julia-1.9-blue.svg?longCache=true)
![Julia1.10](https://img.shields.io/badge/Julia-1.10-blue.svg?longCache=true)

# SpinMax.jl
`SpinMax.jl` is a software for calculating magnon dispersions, spectra, and topology based on linear spin wave theory using Holstein-Primakoff transformation. Its quasi-particle excitations are described in a bosonic basis. 


$$
S'^z = S-a^\dagger a 
$$

$$
S'^+ = \sqrt{2S-a^\dagger a}~ a 
$$

$$
S'^- = a^\dagger\sqrt{2S-a^\dagger a}  
$$


This magnonic excitation is calculated with 'spin lattice information' and 'magnetic exchange interactions'. Of course, the magnetic exchange interaction can be manually identified by users.


$$
H=\sum_{i,j}\vec{S}_i \cdot \overleftrightarrow{J} \cdot \vec{S_j} 
$$

Another way to establish the exchange interactions is 'magnetic force theorem' or 'magnetic force linear response theory' (MFT) method. 
`SpinMax.jl` supports the interface conneting to [`Jx.jl`](https://kaist-elst.github.io/Jx.jl/), which is supporting MFT from electronic structure calculations (openMX, openMX-Wannier, Wannier90, LOBSTER, ecalJ-QSGW).

`SpinMax.jl` is written based in Julia language. `SpinMax.jl` is tested under Julia ver. 1.6-1.10.

#### Developer: [Do Hoon Kiem](https://dhkiem.github.io/) 

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
