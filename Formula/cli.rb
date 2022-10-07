# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.23.4"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.23.4/raito-0.23.4-darwin_arm64.tar.gz"
      sha256 "4e15e409eefce7729461f440f96134224d5bd627bc8b15292e638149a0000e73"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.23.4/raito-0.23.4-darwin_amd64.tar.gz"
      sha256 "862e7eaae887601afd6cf00c7dfc4377970f4017fe75c7bda98aadd1f175e77a"

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
      url "https://github.com/raito-io/cli/releases/download/v0.23.4/raito-0.23.4-linux_amd64.tar.gz"
      sha256 "ac60337cdfbc6360b36ade788f9fb57a2ff2ab9630de72678d84269603de4ac5"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.23.4/raito-0.23.4-linux_arm64.tar.gz"
      sha256 "0e2721ace4370a29a3430c94c2a397c30a772ac67ddc1e3cd9fe51e3a7007c69"

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
