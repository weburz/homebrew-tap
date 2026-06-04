class Terox < Formula
  desc "Project generator built in Go"
  homepage "https://github.com/weburz/terox"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.2.0/terox_0.2.0_darwin_arm64.tar.gz"
      sha256 "e70d1634cffa1f7503dd15b6b4232e28d182a33cc902887cc2c1541a3e34796b"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.2.0/terox_0.2.0_darwin_amd64.tar.gz"
      sha256 "d553a0e524d347a9c02f834da2b544a08ff29dbc612993efb6546abfe42b9c9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.2.0/terox_0.2.0_linux_arm64.tar.gz"
      sha256 "b09f2d6b255d80f1c9cfe4104e10426bafd9b6daa047141e9a7f0d40a971fd3c"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.2.0/terox_0.2.0_linux_amd64.tar.gz"
      sha256 "784023f8c4c630725caf56137d17066a9f7f7c0fdac2de29caa967665945012e"
    end
  end

  def install
    bin.install "terox"
  end

  test do
    assert_match "Terox Build Information", shell_output("#{bin}/terox version")
  end
end
