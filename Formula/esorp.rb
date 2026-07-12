class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_darwin_arm64.tar.gz"
      sha256 "8dfbaf7c6e6956a72fd02a4c8dd164d4072ee324d8ed8e9057ed8505404dfaf2"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_darwin_amd64.tar.gz"
      sha256 "7300d3511d25a784beec9d19b7fe9dbb2714b7b44873feef5cf0226cb990d4e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_linux_arm64.tar.gz"
      sha256 "7e40c72eda8e92e98e426bc373668ce4b8c77bbaecafa22187b927d732ed3532"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.1.0/esorp_0.1.0_linux_amd64.tar.gz"
      sha256 "a9ce42858e1f39b9a02e206d3f2e616c1df41296c7bcbe645107227af534d614"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/esorp version")
  end
end
