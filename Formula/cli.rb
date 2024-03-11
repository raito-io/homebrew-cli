# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.61.2"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.61.2/raito-0.61.2-darwin_arm64.tar.gz"
      sha256 "de893d82c2800e2413d58e678c9f47a6ad3fb23bc61088b1858a26c82e95daed"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.61.2/raito-0.61.2-darwin_amd64.tar.gz"
      sha256 "6c2088fa5d398f2ed7c6699cc96f7cdede58c130b21f8c1c7ccd8ede621e2c54"

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
      url "https://github.com/raito-io/cli/releases/download/v0.61.2/raito-0.61.2-linux_arm64.tar.gz"
      sha256 "c8f57fe04fcc78e75a4c4569ff33b505f4d8671826002923df196a00f1ce0a2a"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.61.2/raito-0.61.2-linux_amd64.tar.gz"
      sha256 "428946f8263c994febba26bffe87c7d56686078ccf251587e5185b4eed10739f"

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
