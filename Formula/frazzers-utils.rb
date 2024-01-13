class FrazzersUtils < Formula
  desc "A collection of command line tool that I use to make my life easier"
  version "0.3.2"
  on_macos do
    on_arm do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.2/frazzers-utils-aarch64-apple-darwin.tar.xz"
      sha256 "c18f61799a6f6d33fd0cda6eadc60dd44bd873941020ad0ce852281fe644f689"
    end
    on_intel do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.2/frazzers-utils-x86_64-apple-darwin.tar.xz"
      sha256 "3321551c44220033f2acab482126591e0226a7ebf1fc377ffa5fc29027308317"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.2/frazzers-utils-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "946ba2e2ffdf9b37f9bfaf9df97cb4f4d3819ba71a7be36537a9e1e2eafafc28"
    end
  end
  license "MIT"

  def install
    bin.install "futils"

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
