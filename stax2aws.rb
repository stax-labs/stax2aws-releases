require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.1.2'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_darwin_amd64.tar.gz"
    sha256 '1c1a32bae93e193906bcf4609d27e812e274ffd1879bff9120e919248a5034c1'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 '542fae64cedd1ce89bd7e150f936d860edcff88d8ebe0f739e3958fbc26c3d8d'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
