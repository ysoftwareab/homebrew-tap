# WARNING: DO NOT EDIT. AUTO-GENERATED CODE (./buildevents.rb.tpl)

class Buildevents < Formula
  desc "CLI for Honeycomb build events"
  homepage "https://github.com/honeycombio/buildevents"
  version "0.18.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-darwin-arm64"
      sha256 "aec6252b26b86d0577fef0dd931445a7754a81c114ea1921a3b50103e1c787f3"
    elsif Hardware::CPU.is_64_bit?
      url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-darwin-amd64"
      sha256 "1c65dd04fe978d17ffd20387bd65288bb4d8979d3271143b576be90f38e699a7"
    else
      url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-darwin-386"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-linux-amd64"
        sha256 "fad862360932679e265b9bab2cf9e80918ac8c827a1042c78f05fd01806c7a3b"
      else
        url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-linux-386"
        sha256 "c7bac4d81ce44a6bac94f2b6763085b1d99e976bc10e8c28fab0b20f778e76d9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-linux-arm64"
        sha256 "2301f1c237962314a837244c548ee4cbc78dff9f5a357ba6d8d00baacd77e118"
      else
        url "https://github.com/honeycombio/buildevents/releases/download/v0.18.0/buildevents-linux-arm"
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
