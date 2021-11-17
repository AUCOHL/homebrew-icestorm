class ArachnePnr < Formula
    desc "Placement and routing for FPGA"
    homepage "http://www.clifford.at/icestorm/"
    url "https://github.com/YosysHQ/arachne-pnr/tarball/c40fb2289952f4f120cc10a5a4c82a6fb88442dc"
    sha256 "aa0a58c4ec85d0e0a8c69ea4f0f3000a86eb86c15fbd41dd4c93fee431a4cdb0"
    head "https://github.com/YosysHQ/arachne-pnr"
    version "0.1.0-c40fb2289952f4f120cc10a5a4c82a6fb88442dc"

    deprecate! date: "2021-11-17", because: "is no longer used by Cloud V and has not been maintained since 2019"

    depends_on "icestorm"

    def install
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install", "PREFIX=#{prefix}", "ICEBOX=#{Formula["icestorm"].opt_share}/icebox"
    end
end