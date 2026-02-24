# WARNING: DO NOT EDIT. AUTO-GENERATED CODE (./honeyvent.rb.tpl)

class Honeyvent < Formula
  desc "CLI for sending events to Honeycomb"
  homepage "https://github.com/honeycombio/honeyvent"
  version "1.1.2"

  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-darwin-amd64"
      sha256 "1a345ea9f1d2549606b580f1d893d6cf4df232975ea936ad9360a106ea04788e"
    else
      url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-darwin-386"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-linux-amd64"
        sha256 "38c9c60ed09f4ad8dc224e1fd74f46854607c984ad93ad8d0d78bdb53b76721e"
      else
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-linux-386"
        sha256 "22c2079c7c89fd460d5ddd236c89b1e61b8135394fb7aa5464eef6e026df7a78"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-linux-arm64"
        sha256 "dd67294409d1e819db55228f70b7a1c91cf21d631019042594bdb708861e3001"
      else
        url "https://github.com/honeycombio/honeyvent/releases/download/v1.1.2/honeyvent-linux-arm"
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
    system "#{bin}/honeyvent", "-h"
  end
end
