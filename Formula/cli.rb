# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.34.0"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.34.0/raito-0.34.0-darwin_amd64.tar.gz"
      sha256 "1a81a81d340f9a73b4e3480183d3d2c28d33c2460af40a70607eef680e5edc45"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.34.0/raito-0.34.0-darwin_arm64.tar.gz"
      sha256 "a650ea81d04bc1d9365f007eb7dafcc17ed228689841800913b0d89aeb581719"

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
      url "https://github.com/raito-io/cli/releases/download/v0.34.0/raito-0.34.0-linux_arm64.tar.gz"
      sha256 "8d522052138ad94ff8aace56e6a57c8080ec3291d431834c3bfe92f3b022bd25"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.34.0/raito-0.34.0-linux_amd64.tar.gz"
      sha256 "452bfef239ef931422cfea0c59098e5b8bbd02464ab2ef17e3e24d48df59210d"

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
