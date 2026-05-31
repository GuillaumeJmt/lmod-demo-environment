# Lmod Module Environment - Demo

Demonstration of Lmod modulefiles for scientific software on HPC clusters.
Built and tested on Ubuntu 24.04 ARM64 (Lima VM on Apple M1).

## What is Lmod?

Lmod is a module system that allows users to load and unload software
environments on HPC clusters. It handles PATH, LD_LIBRARY_PATH, and
environment variables automatically.

## Modules included

| Software | Version | Method | Description |
|----------|---------|--------|-------------|
| NWChem | 7.3.0 | conda-forge | Open-source computational chemistry |

## Usage

Add this directory to Lmod search path and load NWChem:

    module use /path/to/modulefiles
    module avail
    module load NWChem/7.3.0
    which nwchem
    nwchem water.nw > water.log

## Validation

Tested with a water molecule HF/STO-3G single point calculation:

    Total SCF energy = -74.962946671090

This matches the reference value for H2O at the HF/STO-3G level of theory.

## Environment

- OS: Ubuntu 24.04 LTS ARM64
- Lmod: 8.6.19
- NWChem: 7.3.0 (conda-forge)
- Lima VM on Apple M1
