class Eza < Formula
  desc "Official command-line interface for Eza Cloud"
  homepage "https://eza.co.ke/docs/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ezacloud/eza-cli/releases/download/v#{version}/eza_darwin_arm64.tar.gz"
    else
      url "https://github.com/ezacloud/eza-cli/releases/download/v#{version}/eza_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ezacloud/eza-cli/releases/download/v#{version}/eza_linux_arm64.tar.gz"
    else
      url "https://github.com/ezacloud/eza-cli/releases/download/v#{version}/eza_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "eza"
  end

  test do
    assert_match "eza", shell_output("#{bin}/eza version")
  end
end
