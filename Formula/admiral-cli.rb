# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AdmiralCli < Formula
  desc "Admiral CLI utility"
  homepage "https://admiral.io/"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_darwin_arm64.tar.gz"
      sha256 "4a1a9d9acc2f1063b86a90dee91803d3aba17e0c3feb610218f0880b1e722197"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_darwin_amd64.tar.gz"
      sha256 "b5b7ca1d79aa830a7b037ace7dd7748aac18e96c5d5efe92729913f48121a91b"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_linux_arm64.tar.gz"
      sha256 "64d6e7e192b2ab5a42fdc74c028bf098148a1978d457dcf2402eaa3b34d65548"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_linux_amd64.tar.gz"
      sha256 "6653315b718f03cc0ab3d8ae7b2d3d6e24a9086dd5ef3f75e5554329cb8fc622"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
  end

  def caveats
    <<~EOS
      ❤ Thanks for installing the Admiral!
    EOS
  end

  test do
    system "#{bin}/admiral --version"
  end
end
