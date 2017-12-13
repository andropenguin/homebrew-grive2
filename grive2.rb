HOMEBREW_GRIVE2_VERSION="v0.4.2"

class Grive2 < Formula
  desc "Google Drive client with support for new Drive REST API and partial sync http://yourcmc.ru/wiki/Grive2"
  homepage "http://yourcmc.ru/wiki/Grive2"
  url "https://github.com/vitalif/grive2",
      :using => :git,
      :tag => HOMEBREW_GRIVE2_VERSION

  version HOMEBREW_GRIVE2_VERSION

  depends_on "cmake" => :build, "jajl"

  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  test do
    system "false"
  end
end
