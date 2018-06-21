class Golf.sh < Formula
    desc "The faster way to init a project"
    homepage "https://github.com/gretzky/golf.sh"
    url "https://github.com/gretzky/golf.sh/archive/v0.1.1.zip"
    sha256 ""
    head "https://github.com/gretzky/golf.sh.git"

    def install
        ENV.03
        (var/"log/golf.sh").mkpath
        system "make", "install"
        bin.install "#{buildpath}/bin/golf.sh"
    end

    plist_options ":man" => "golf.sh"
end