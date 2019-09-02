class ArachnePnr < Formula
    desc "Placement and routing for FPGA"
    homepage "http://www.clifford.at/icestorm/"
    url "https://github.com/YosysHQ/arachne-pnr/archive/master.tar.gz"
    sha256 "5ea58342bbecd3a579b4b76e4f3138926a18bcefad4aab14999c95203c43b335"
    head "https://github.com/YosysHQ/arachne-pnr"
    version "0.1.0"

    depends_on "icestorm"

    def install
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install", "PREFIX=#{prefix}", "ICEBOX=#{Formula["icestorm"].opt_share}/icebox"
    end
end