class Golf < Formula
  desc "the faster way to init a project"
  homepage ""
  url "https://github.com/gretzky/golf/archive/v0.1.1.tar.gz"
  sha256 "a431b6fa61d49c682d9c12b08490a3eff071f1cbaaed97eee81c48bc4db6844a"
  depends_on "dialog" => :build
  depends_on "jq"

  def install
    system "make", "install"
  end

  test do
    assert_match "golf.sh #{version}", shell_output("#{bin}/golf.sh --version")
  end
end
