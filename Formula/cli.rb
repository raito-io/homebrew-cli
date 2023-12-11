# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.55.2"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.55.2/raito-0.55.2-darwin_arm64.tar.gz"
      sha256 "f4e4de6173c2cf79500f760961967024f68bc4bbfe73a34a7566074a87276a49"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.55.2/raito-0.55.2-darwin_amd64.tar.gz"
      sha256 "5cb2d3c8c767d0057e67ebbd4cac2d8a78b879ccce3ecc97a2489c3ffe4d79aa"

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
      url "https://github.com/raito-io/cli/releases/download/v0.55.2/raito-0.55.2-linux_arm64.tar.gz"
      sha256 "38f2c7566d4067bc12ba6b5887b808ecafbc21c8ff67e07392c571375ef279c2"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.55.2/raito-0.55.2-linux_amd64.tar.gz"
      sha256 "8aa90b60c48d41084c38daea0eac27e00577d30bd571722253692b65da3c2ed2"

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
