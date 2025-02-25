class Unity3d < Formula
  desc "CLI tool for launching Unity projects with version detection"
  homepage "https://github.com/Arikaton/homebrew-unity3d"
  url "https://github.com/Arikaton/homebrew-unity3d/releases/download/v1.0.0/unity3d-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "a36765c619a986671da6d8cde08a341d74d64e7989b4ed36a9d24845a73b6950"

  def install
    bin.install "unity3d"
    zsh_completion.install "unity3d-completion.zsh"
  end

  def caveats
    <<~EOS
      To enable auto-completion, add this to your shell profile:
        source #{HOMEBREW_PREFIX}/share/zsh/site-functions/_unity3d
    EOS
  end

  test do
    system "#{bin}/unity3d", "-h"
  end
end