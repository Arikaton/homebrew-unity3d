class Unity3d < Formula
  desc "CLI tool for launching Unity projects with version detection"
  homepage "https://github.com/Arikaton/homebrew-unity3d"
  url "https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/homebrew-unity3d/main/unity3d"
  version "1.0.0"
  sha256 "53a166b8096e35ead4f80aee4c5f74d2f0307266c5f0cbfb28dfc73cd9de7905"

  def install
    bin.install "unity3d"
    bash_completion.install "unity3d-completion.zsh"
    zsh_completion.install "unity3d-completion.zsh"
  end

  def caveats
    <<~EOS
      To enable auto-completion, add this to your shell profile:
        source #{HOMEBREW_PREFIX}/etc/bash_completion.d/unity3d-completion.zsh
    EOS
  end

  test do
    system "#{bin}/unity3d", "-h"
  end
end
