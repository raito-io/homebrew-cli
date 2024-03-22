# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.62.0"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.62.0/raito-0.62.0-darwin_arm64.tar.gz"
      sha256 "51e28418babdca189cd92b816f10de13983df50620883a5e0b45ad0b4c95e57e"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.62.0/raito-0.62.0-darwin_amd64.tar.gz"
      sha256 "cf00c62f27ca404497c3b6f73b6b0a21c4616e6cdf4bf5ebeabf54cf1b4f5004"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.62.0/raito-0.62.0-linux_amd64.tar.gz"
      sha256 "83552fc7e4af05e76950bc1e2208cae54ca63b7fa4c9656637fe4194678ca0e8"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.62.0/raito-0.62.0-linux_arm64.tar.gz"
      sha256 "5fcaf7a776eca014a41171806ec88d0f4668f5afa220c6ef39f100560d16cb20"

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
