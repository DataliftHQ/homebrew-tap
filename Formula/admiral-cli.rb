# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AdmiralCli < Formula
  desc "Admiral CLI utility"
  homepage "https://admiral.io/"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_darwin_amd64.tar.gz"
      sha256 "76e2b03300e7f08c93e3c2cf694db4f50f5b57277b091944a49d667c3fdf51a6"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_darwin_arm64.tar.gz"
      sha256 "eb45c78c80916e6d5e4d97c32910a030e715cb40399ba9774e010ea1a00d51e2"

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
    if Hardware::CPU.intel?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_linux_amd64.tar.gz"
      sha256 "e2743c5ce6c9b961cf860d2ad6200712b6ae012e815c41bb8d29cb6f7ab795da"

      def install
        bin.install "admiral"
        bin.install_symlink "admiral" => "adm"
        bash_completion.install "completions/admiral.bash" => "admiral"
        zsh_completion.install "completions/admiral.zsh" => "_admiral"
        fish_completion.install "completions/admiral.fish"
        man1.install "manpages/admiral.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DataliftHQ/admiral/releases/download/v0.1.0/admiral-0.1.0_linux_arm64.tar.gz"
      sha256 "1fc530ba226ad61b3d99b572150ab7da471435af5164174303f7092789c4a92e"

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
