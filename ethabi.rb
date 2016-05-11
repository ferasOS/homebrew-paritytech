require 'formula'

class Ethabi < Formula
  homepage 'https://github.com/ethcore/parity'

  version '0.1.0'
  url 'https://github.com/ethcore/ethabi.git', :branch => 'master', :using => :git

  depends_on 'multirust' => :build

  def install
    system "multirust update stable"
    system "multirust run stable cargo build --release"
    bin.install "target/release/ethabi"
  end
end
