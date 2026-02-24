# WARNING: DO NOT EDIT. AUTO-GENERATED CODE (./buildevents.rb.tpl)

class Buildevents < Formula
  desc "CLI for Honeycomb build events"
  homepage "https://github.com/honeycombio/buildevents"
  version "0.9.2"

  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-darwin-amd64"
      sha256 "4d736f177d68eadc2a683a47c58c87f9aa0686179a264c2d3d797ede73a872b9"
    else
      url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-darwin-386"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-linux-amd64"
        sha256 "81d2accfeb0b7444c805d5ad90db2f14196f29900bd909ffec61648c4c479613"
      else
        url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-linux-386"
        sha256 "21196bccd31bc464f7380accecf712e67846ec4936e5e0b50048cf0bd1034f27"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-linux-arm64"
        sha256 "3ddfd80ce3c01e6f3f446ffe914b3c5b9b2149f7d5028a6d2d5375481682ea97"
      else
        url "https://github.com/honeycombio/buildevents/releases/download/v0.9.2/buildevents-linux-arm"
        sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
      end
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "buildevents-darwin-arm64" => "buildevents"
      elsif Hardware::CPU.is_64_bit?
        bin.install "buildevents-darwin-amd64" => "buildevents"
      else
        bin.install "buildevents-darwin-386" => "buildevents"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        if Hardware::CPU.is_64_bit?
          bin.install "buildevents-linux-amd64" => "buildevents"
        else
          bin.install "buildevents-linux-386" => "buildevents"
        end
      elsif Hardware::CPU.arm?
        if Hardware::CPU.is_64_bit?
          bin.install "buildevents-linux-arm64" => "buildevents"
        else
          bin.install "buildevents-linux-arm" => "buildevents"
        end
      end
    end
  end

  test do
    system "#{bin}/buildevents", "-h"
  end
end
