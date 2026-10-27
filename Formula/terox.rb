class Terox < Formula
  desc "Project generator built in Go"
  homepage "https://github.com/weburz/terox"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.4.0/terox_0.4.0_darwin_arm64.tar.gz"
      sha256 "f3475663d0e39adc57ce50db968970eee1598c8f412a9284a38a69e02b56f09d"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.4.0/terox_0.4.0_darwin_amd64.tar.gz"
      sha256 "017ae5406e7f8ff9a277cfa06532e0761a7bad0f970ff76bfaf7f93850d65815"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/weburz/terox/releases/download/v0.4.0/terox_0.4.0_linux_arm64.tar.gz"
      sha256 "52329309c7b7638f72edbd68b90faaad6d330bd5eca6b46972a7746acf26dbd6"
    end
    on_intel do
      url "https://github.com/weburz/terox/releases/download/v0.4.0/terox_0.4.0_linux_amd64.tar.gz"
      sha256 "a34dfb40a0fb3ea4b4d38f475c05bb8cd43494dd0947f44da8c84eca73c4514d"
    end
  end

  def install
    bin.install "terox"
  end

  test do
    assert_match "Terox Build Information", shell_output("#{bin}/terox version")
  end
end
