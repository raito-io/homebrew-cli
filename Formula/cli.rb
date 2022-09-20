# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.20.3"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.20.3/raito-0.20.3-darwin_amd64.tar.gz"
      sha256 "8274d57851f263412839b285df32f231996d1ff7c287d131cf8548bdcd2ff584"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.20.3/raito-0.20.3-darwin_arm64.tar.gz"
      sha256 "9ab59fa394bd7deb78e2002b14a15bbba23568817e61cb96adf5d7deb9a0bb5e"

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
      url "https://github.com/raito-io/cli/releases/download/v0.20.3/raito-0.20.3-linux_arm64.tar.gz"
      sha256 "545ee96fcdd2d9e03ddcf9953e5576993099c045926e1ffc4d48d4f834145d38"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.20.3/raito-0.20.3-linux_amd64.tar.gz"
      sha256 "1b705547a01dfba553fbb25cc01b010e2a311c1ed608610aaae8aeefd1f10a2b"

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
