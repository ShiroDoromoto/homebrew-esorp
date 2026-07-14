class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.5.0/esorp_0.5.0_darwin_arm64.tar.gz"
      sha256 "9ad37fb254ff970b43025b4059bde61e83518c10b25e2a2ab1a2df745f9c19ca"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.5.0/esorp_0.5.0_darwin_amd64.tar.gz"
      sha256 "cf2424c6021f7fb5818452e48c163db8e476f76492f8f860c51e22d26d978204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.5.0/esorp_0.5.0_linux_arm64.tar.gz"
      sha256 "e08a00cd03cdc54f924f4166f0199276ee631bf9199fa8b7747794f1b8c5c143"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.5.0/esorp_0.5.0_linux_amd64.tar.gz"
      sha256 "fd30627a38c0d07be0dbcb66dc8b4f9cfc40e6d2c8fb761f75d7afac02fdd78a"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/esorp version")
  end
end
