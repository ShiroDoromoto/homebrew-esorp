class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_darwin_arm64.tar.gz"
      sha256 "0f99401bb69ae107f3a6134005642948261c131d94be23eecfd085d617ae9c60"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_darwin_amd64.tar.gz"
      sha256 "cb75b962b1159ddd3627c565570aa17d2b350c5e74225e1d57046f106032df2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_linux_arm64.tar.gz"
      sha256 "952f390f1a96e58d57e25137ea4f9091c1b1611d9b1119d7451028e403c3f949"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_linux_amd64.tar.gz"
      sha256 "30455d6f6d8dcb38693b6ca4a3d0b1e1d2f963e0d077ebd30a07f82d9099a539"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/esorp version")
  end
end
