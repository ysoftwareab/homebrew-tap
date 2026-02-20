# WARNING: DO NOT EDIT. AUTO-GENERATED CODE (./honeyvent.rb.tpl)

class Honeyvent < Formula
  version "1.1.3"

  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-darwin-amd64"
      sha256 "c9acaab8a48aa3345fd323c4315c8aaca52b2f6ce4c6f83b6fa162cd4c516725"
    else
      url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-darwin-386"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-linux-amd64"
        sha256 "3810ad6d70836d5b4f2ef5de27c3c8a3ed4f35bb331635137d44223e285d6fc5"
      else
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-linux-386"
        sha256 "191f3fd367ac9ef5641647af1d928f42de9f8cb435c8baf32293823b1f5dca75"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-linux-arm64"
        sha256 "a480be2a56a20e48598d6df9f682673115ce7ee4f58646b0e07e416ad7dac3c7"
      else
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.3/honeyvent-linux-arm"
        sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
      end
    end
  end

  deprecate! date: "2025-05-14", because: :repo_archived
  disable! date: "2026-05-14", because: :repo_archived

  def install
    if OS.mac?
      if Hardware::CPU.is_64_bit?
        bin.install "honeyvent-darwin-amd64" => "honeyvent"
      else
        bin.install "honeyvent-darwin-386" => "honeyvent"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        if Hardware::CPU.is_64_bit?
          bin.install "honeyvent-linux-amd64" => "honeyvent"
        else
          bin.install "honeyvent-linux-386" => "honeyvent"
        end
      elsif Hardware::CPU.arm?
        if Hardware::CPU.is_64_bit?
          bin.install "honeyvent-linux-arm64" => "honeyvent"
        else
          bin.install "honeyvent-linux-arm" => "honeyvent"
        end
      end
    end
  end

  test do
    system "#{bin}/honeyvent -h"
  end
end
