# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.63.1"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.63.1/raito-0.63.1-darwin_amd64.tar.gz"
      sha256 "f4d3741d4a9c380dde6c6c16189e65e3326fdc9aa516d9e96013972bf340a1e2"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.63.1/raito-0.63.1-darwin_arm64.tar.gz"
      sha256 "d91e5d3d280844de04f2b0831bf33a1311c5a54635ceb8675b4f481f68e4810e"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.63.1/raito-0.63.1-linux_arm64.tar.gz"
      sha256 "b9bd5b8ff0eaae3662f00252f6f20efa4bcdb039fb6aaa5e5b94d89b6d5b4c2b"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.63.1/raito-0.63.1-linux_amd64.tar.gz"
      sha256 "7d5af9e04bd18c0a4313beee264db261a4785d438e6c7af9f262096974fea1b0"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  test do
    system "#{bin}/raito -v"
  end
end
