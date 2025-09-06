class Llminty < Formula
  desc "Single-command CLI to emit a token‑efficient bundle of a Swift repository for LLMs."
  homepage "https://github.com/3lvis/LLMinty"
  url "https://github.com/3lvis/LLMinty/releases/download/v0.1.0/llminty-v0.1.0-macos-arm64.tar.gz"
  sha256 "21ca3bdd6d659790bb5b83df075b891215fbf34fb3ad34165d52845175c6eba6"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "llminty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/llminty --help")
  end
end
