---
title: About
author: Do Hoon Kiem
date: 2024-05-01
category: Jekyll
layout: post
---


![Julia1.6](https://img.shields.io/badge/Julia-1.6-blue.svg?longCache=true)
![Julia1.7](https://img.shields.io/badge/Julia-1.7-blue.svg?longCache=true)
![Julia1.8](https://img.shields.io/badge/Julia-1.8-blue.svg?longCache=true)
![Julia1.9](https://img.shields.io/badge/Julia-1.9-blue.svg?longCache=true)
![Julia1.10](https://img.shields.io/badge/Julia-1.10-blue.svg?longCache=true)

# SpinMax.jl
`SpinMax.jl` is a software for calculating magnon dispersions, spectra, and topology based on linear spin wave theory using Holstein-Primakoff transformation. Its quasi-particle excitations are described in a bosonic basis. 
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msup>
    <mi>S</mi>
    <mrow>
      <mo data-mjx-alternate="1" data-mjx-pseudoscript="true">&#x2032;</mo>
      <mi>z</mi>
    </mrow>
  </msup>
  <mo>=</mo>
  <mi>S</mi>
  <mo>&#x2212;</mo>
  <msup>
    <mi>a</mi>
    <mo>&#x2020;</mo>
  </msup>
  <mi>a</mi>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msup>
    <mi>S</mi>
    <mrow>
      <mo data-mjx-alternate="1" data-mjx-pseudoscript="true">&#x2032;</mo>
      <mo>+</mo>
    </mrow>
  </msup>
  <mo>=</mo>
  <msqrt>
    <mn>2</mn>
    <mi>S</mi>
    <mo>&#x2212;</mo>
    <msup>
      <mi>a</mi>
      <mo>&#x2020;</mo>
    </msup>
    <mi>a</mi>
  </msqrt>
  <mtext>&#xA0;</mtext>
  <mi>a</mi>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msup>
    <mi>S</mi>
    <mrow>
      <mo data-mjx-alternate="1" data-mjx-pseudoscript="true">&#x2032;</mo>
      <mo>&#x2212;</mo>
    </mrow>
  </msup>
  <mo>=</mo>
  <msup>
    <mi>a</mi>
    <mo>&#x2020;</mo>
  </msup>
  <msqrt>
    <mn>2</mn>
    <mi>S</mi>
    <mo>&#x2212;</mo>
    <msup>
      <mi>a</mi>
      <mo>&#x2020;</mo>
    </msup>
    <mi>a</mi>
  </msqrt>
</math>


This magnonic excitation is calculated with 'spin lattice information' and 'magnetic exchange interactions'. Of course, the magnetic exchange interaction can be manually identified by users.

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mi>H</mi>
  <mo>=</mo>
  <mo>&#x2212;</mo>
  <munder>
    <mo data-mjx-texclass="OP">&#x2211;</mo>
    <mrow data-mjx-texclass="ORD">
      <mi>i</mi>
      <mo>,</mo>
      <mi>j</mi>
    </mrow>
  </munder>
  <msub>
    <mrow data-mjx-texclass="ORD">
      <mover>
        <mi>S</mi>
        <mo stretchy="false">&#x2192;</mo>
      </mover>
    </mrow>
    <mi>i</mi>
  </msub>
  <mo>&#x22C5;</mo>
  <mover>
    <mi>J</mi>
    <mo>&#x2194;</mo>
  </mover>
  <mo>&#x22C5;</mo>
  <mrow data-mjx-texclass="ORD">
    <mover>
      <msub>
        <mi>S</mi>
        <mi>j</mi>
      </msub>
      <mo stretchy="false">&#x2192;</mo>
    </mover>
  </mrow>
</math>

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
