help([[
NWChem 7.3.0 - Open Source High-Performance Computational Chemistry

Usage:
  nwchem input.nw > output.log

Documentation: https://nwchemgit.github.io
]])

whatis("Name:        NWChem")
whatis("Version:     7.3.0")
whatis("Category:    Computational Chemistry")
whatis("Description: Open-source high-performance computational chemistry")
whatis("URL:         https://nwchemgit.github.io")

-- Adjust this prefix to your local NWChem install
local home = "/home/guillaumelumin.guest/miniconda3"
local version = "7.3.0"

prepend_path("PATH",            home .. "/bin")
prepend_path("LD_LIBRARY_PATH", home .. "/lib")

setenv("NWCHEM_BASIS_LIBRARY", home .. "/share/nwchem/libraries.bse/")
setenv("NWCHEM_VERSION",       version)
