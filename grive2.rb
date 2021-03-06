HOMEBREW_GRIVE2_VERSION="v0.5.1-dev"

class Grive2 < Formula
  desc "Google Drive client with support for new Drive REST API and partial sync http://yourcmc.ru/wiki/Grive2"
  homepage "http://yourcmc.ru/wiki/Grive2"
  url "https://github.com/vitalif/grive2",
      :using => :git,
      :revision => "84c57c121e03b070f80e1d8fd66749eead7a4d9e"

  version HOMEBREW_GRIVE2_VERSION

  depends_on "cmake" => :build

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
