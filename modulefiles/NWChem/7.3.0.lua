help([[
NWChem 7.3.0 - Open Source High-Performance Computational Chemistry

Usage:
  nwchem input.nw > output.log

Documentation: https://nwchemgit.github.io

Note: demonstration modulefile. The default prefix points at my personal
conda-forge install of NWChem, used during local HPC practice. Override it with
`export NWCHEM_ROOT=/path` to adapt this module to another environment.
]])

whatis("Name:        NWChem")
whatis("Version:     7.3.0")
whatis("Category:    Computational Chemistry")
whatis("Description: Open-source high-performance computational chemistry")
whatis("URL:         https://nwchemgit.github.io")

local version = "7.3.0"
-- Personal conda-forge install used for this demo; override with NWCHEM_ROOT.
local home = os.getenv("NWCHEM_ROOT") or "/home/guillaumelumin.guest/miniconda3"

prepend_path("PATH",            home .. "/bin")
prepend_path("LD_LIBRARY_PATH", home .. "/lib")

setenv("NWCHEM_BASIS_LIBRARY", home .. "/share/nwchem/libraries.bse/")
setenv("NWCHEM_VERSION",       version)
