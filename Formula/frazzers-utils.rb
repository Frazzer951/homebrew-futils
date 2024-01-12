class FrazzersUtils < Formula
  desc "A collection of command line tool that I use to make my life easier"
  version "0.3.1"
  on_macos do
    on_arm do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.1/frazzers-utils-aarch64-apple-darwin.tar.xz"
      sha256 "909b8c1849c67894efa5e3d725f055af29ff33c4ddf36bdc9da4b7f19b3152a0"
    end
    on_intel do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.1/frazzers-utils-x86_64-apple-darwin.tar.xz"
      sha256 "5454e7bd0b8e8ee77f0f63f608a296c2ee6e1a4c98591bdc0019ba3568740761"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Frazzer951/futils/releases/download/v0.3.1/frazzers-utils-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "4cb3c2fc7bd443ce38ca288622001ea0a3310f516895e310636da2b686810805"
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
