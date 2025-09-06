class Llminty < Formula
  desc "Produce a compact Swift repository bundle suitable for LLMs"
  homepage "https://github.com/3lvis/LLMinty"
  url "https://github.com/3lvis/LLMinty/releases/download/v0.1.0/llminty-v0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "21ca3bdd6d659790bb5b83df075b891215fbf34fb3ad34165d52845175c6eba6"
  license "MIT"

  def install
    bin.install "llminty"
  end

  test do
    # run the help output and assert a known string is present
    assert_match "Usage", shell_output("#{bin}/llminty --help")
  end
end
