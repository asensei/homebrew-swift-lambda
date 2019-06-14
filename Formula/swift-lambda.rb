class SwiftLambda < Formula
  desc "A command line interface that provides shortcuts and assistance for creating and packaging AWS Lambda Swift functions."
  homepage "https://github.com/asensei/homebrew-swift-lambda"
  version "0.2.0"
  url "https://github.com/asensei/homebrew-swift-lambda.git", :using => :git, :tag => version.to_s

  depends_on :xcode => "10.2"

  def install
    ENV["CC"] = which(ENV.cc)
    bin.install "swift-lambda"
  end
end
