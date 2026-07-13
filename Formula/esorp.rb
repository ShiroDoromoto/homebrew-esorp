class Esorp < Formula
  homepage "https://github.com/ShiroDoromoto/esorp"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.3.0/esorp_0.3.0_darwin_arm64.tar.gz"
      sha256 "a45a1a37fa74b9ff8877f676406684acb7207b293f33f89d39d5bccf2ea0eacc"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.3.0/esorp_0.3.0_darwin_amd64.tar.gz"
      sha256 "f67bec4cfaf78def69a8ee6a86156afde6132723be169affea091e9eb5cd3d1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.3.0/esorp_0.3.0_linux_arm64.tar.gz"
      sha256 "d2d26f911eb9236fb1f5d65b4178e31094531a9a0597495175f4f4d55aba1624"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/esorp/releases/download/v0.3.0/esorp_0.3.0_linux_amd64.tar.gz"
      sha256 "b76818648db4caaf2ec17540861c964e631b67f5e97ec0c7a10288c1a66d270b"
    end
  end

  def install
    bin.install "esorp"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/esorp version")
  end
end
