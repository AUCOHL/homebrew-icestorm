Changelog
* November 2021
    * changed versioning model to `0.1.0-<hash>`, as upstream doesn't have tags or releases
    * Added support for nextpnr-ice40
    * Deprecated arachne-pnr

# Icestorm Homebrew Tap
This is the a homebrew tap for the icestorm tools. Verilator, IcarusVerilog and Yosys are already part of homebrew-core, but these aren't. And we need them.

# Usage
`brew tap cloud-v/icestorm`

Then you can `brew install icestorm nextpnr-ice40`.

Alternatively, you can just `brew install cloud-v/icestorm/icestorm cloud-v/icestorm/nextpnr-ice40`.

# License
2-clause BSD license. See 'License'.

These formulas are derived from and are enabled by work of the Homebrew team, who we thank dearly.