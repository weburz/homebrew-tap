class Terox < Formula
  desc "Project generator built in Go"
  homepage "https://github.com/weburz/terox"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.1.2/terox_0.1.2_darwin_arm64.tar.gz"
      sha256 "b9e5d122f2fa5ee25de09e18f477c7f05226b32175b1c598d7370a07c00eb46b"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.1.2/terox_0.1.2_darwin_amd64.tar.gz"
      sha256 "ebff9bd618ef20ab0e674dafdf8a3653735e1d23b100fdc3432cb8178214290c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.1.2/terox_0.1.2_linux_arm64.tar.gz"
      sha256 "9f0dcb8d64a9dbaa7b973532cb07724c25a534e581b5dd5024d609f057872c7f"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.1.2/terox_0.1.2_linux_amd64.tar.gz"
      sha256 "b2ddfaefab446f8cc7f468eda029b5a116d6e873b8d752428230be873e85549e"
    end
  end

  def install
    bin.install "terox"
  end

  test do
    assert_match "Terox Build Information", shell_output("#{bin}/terox version")
  end
end
