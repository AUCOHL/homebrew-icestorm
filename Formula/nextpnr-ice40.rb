class NextpnrIce40 < Formula
    desc "vendor neutral, timing driven, FOSS FPGA place and route tool"
    url "https://github.com/YosysHQ/nextpnr/tarball/b7207b088539e7b5f34ebbd9f53f9fa14bef6e62"
    sha256 "2b153b7bbd658e948a847bb1625e6dd0e9a6c8a18d21bbc823eff6e09324cbab"
    head "https://github.com/YosysHQ/nextpnr"
    version "0.1.0-b7207b088539e7b5f34ebbd9f53f9fa14bef6e62"

    depends_on "boost"
    depends_on "eigen"
    depends_on "icestorm"
    depends_on "cmake" => :build

    def install
        system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DICESTORM_INSTALL_PREFIX=#{Formula["icestorm"].opt_prefix}", ".", "-DARCH=ice40"
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install"
    end
end