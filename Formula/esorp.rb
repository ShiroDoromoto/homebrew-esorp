class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.6.0/esorp_0.6.0_darwin_arm64.tar.gz"
      sha256 "74423f512b8c55d71b4c5974d1d473268351bb5d06a87e158f11de5e0b6d1d5e"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.6.0/esorp_0.6.0_darwin_amd64.tar.gz"
      sha256 "f0e6cc27dc4450c118e41c1b46d8116f56ef80d7038ef1ee0a2404540d26dbbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.6.0/esorp_0.6.0_linux_arm64.tar.gz"
      sha256 "86d84b0c5847c54ca17f568739239cb480b95b47cae4bec69a5a33c98206334b"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.6.0/esorp_0.6.0_linux_amd64.tar.gz"
      sha256 "bd0a8136aa859892e21b51270ba6202e40529e100c0e8aeb5558726822e257c2"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/esorp version")
  end
end
