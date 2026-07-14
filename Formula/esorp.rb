class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.4.0/esorp_0.4.0_darwin_arm64.tar.gz"
      sha256 "c453e5c5bb139873e70bbb7fdfe4fa6d4bae3a98bcdd3a24e2ba91b07b4860c3"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.4.0/esorp_0.4.0_darwin_amd64.tar.gz"
      sha256 "4a5f9fd09ba5bb64aa36a47213d72010b22ab4b8092acbfab68d8fdb68112c24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.4.0/esorp_0.4.0_linux_arm64.tar.gz"
      sha256 "6bd0e4efb30cb80f6bafb332d3d51465a109a56f8430132c3ee8f8951936732d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.4.0/esorp_0.4.0_linux_amd64.tar.gz"
      sha256 "df65ee82ce8bee01244c486ca4884bc6d87d81f297c58c747295f78677f3cac0"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/esorp version")
  end
end
