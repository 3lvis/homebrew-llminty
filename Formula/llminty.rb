class Llminty < Formula
  desc "LLMinty — small CLI (example)"
  homepage "https://github.com/3lvis/LLMinty"
  url "https://github.com/3lvis/LLMinty/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d4dd2dd1eed0f081a0bbe53d60858c6ad1f665ab9e70c9d4fd1ce9a436f40833"
  license "MIT"

  # Build-time requirement: Xcode or macOS toolchain
  depends_on xcode: :build

  def install
    # Build with SwiftPM
    system "swift", "build", "-c", "release"

    # Find the built executable inside .build/<triple>/release/
    exe = Dir[".build/*/release/llminty"].first
    raise "llminty binary not found" unless exe && File.executable?(exe)

    bin.install exe
  end

  test do
    # Minimal smoke test; update as appropriate
    assert_match "Usage", shell_output("#{bin}/llminty --help", 0)
  end
end
