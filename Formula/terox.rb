class Terox < Formula
  desc "Project generator built in Go"
  homepage "https://github.com/weburz/terox"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.3.0/terox_0.3.0_darwin_arm64.tar.gz"
      sha256 "112252181c09d2f437c1ccd78f92b704dbb84b978cec7b8b207ce359521f73c4"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.3.0/terox_0.3.0_darwin_amd64.tar.gz"
      sha256 "1d13b838318725c7a604358d5dadc827abb98d46f42da08b237f3b80587785c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.3.0/terox_0.3.0_linux_arm64.tar.gz"
      sha256 "066d9aa76307f41a57ae1a5edc1bde1322730bef6a554f397de5759ec694789e"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.3.0/terox_0.3.0_linux_amd64.tar.gz"
      sha256 "97b04ad2a4a4aef6e9b4b6d05424f1f81bc6bdf1e06f1513b0ead1977ada57ec"
    end
  end

  def install
    bin.install "terox"
  end

  test do
    assert_match "Terox Build Information", shell_output("#{bin}/terox version")
  end
end
