class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.2.0/esorp_0.2.0_darwin_arm64.tar.gz"
      sha256 "9d7809963aa275a7cfcad08e6cc2b9e7f340bb24acc8f61f277887a8dbe3b42c"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.2.0/esorp_0.2.0_darwin_amd64.tar.gz"
      sha256 "1b3b9080d071a9911a62f61cb98fdb2b30a63335eb1b1d47e4fae9739b05aa7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.2.0/esorp_0.2.0_linux_arm64.tar.gz"
      sha256 "f1343d60ccb1d58a7a5c6041a69f2c1732eebdaa69d7333b2a25427b53128042"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.2.0/esorp_0.2.0_linux_amd64.tar.gz"
      sha256 "3014d4984a324465612ce9821b4747664fc036981115645b003e7e05e1172de8"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/esorp version")
  end
end
