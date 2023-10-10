![Julia1.6](https://img.shields.io/badge/Julia-1.6-blue.svg?longCache=true)

# SpinMaX.jl
`SpinMaX.jl` is the software for calculating magnon dispersion, spectra, and topology based on quantum mechanical 'linear spin wave theory'. Its quasi-particle excitations are described in a bosonic basis. 
This magnonic excitation is calculated with 'spin lattice information' and 'magnetic exchange interactions'. Of course, the magnetic exchange interaction can be manually identified by users.
Another way to establish the exchange interaction is 'magnetic force theorem' or 'magnetic force linear response theory' (MFT) method. 
`SpinMaX.jl` provides the interface conneting to [`jx.jl`](https://kaist-elst.github.io/Jx.jl/), which is supporting MFT from electronic structure calculations (openMX, openMX-Wannier, Wannier90, QSGW).


##### Developer: [Do Hoon Kiem](https://dhkiem.github.io/) 

## Capability
* Band dispersion
* k,E-resolved Correlation function 
* Density of states 
* Chern number calculation

## Installation 


* (cloning) Will be opened

  ```ShellSession
  $ git clone https://github.com/DHKiem/SpinMaX.jl.git
  ```

## USE
For the calculation, `magnon_input.txt` file is required. It contains input parameters for magnon bands, dos, etc.

If you have `magnon_input.txt` in your current directory, then run the script.
```bash
$ julia $SpinMaxPATH/src/SpinMax.jl 
```


## Example
### 1D FM chain
* This section describes the example calculation. The first example is a 1D FM chain. 

### NiO (combined with Jx.jl)


### Honeycomb lattice with DMI


