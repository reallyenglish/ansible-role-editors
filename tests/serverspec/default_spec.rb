require "spec_helper"
require "serverspec"

packages = nil

case os[:family]
when "freebsd"
  packages = %w[vim-lite emacs-nox11]
when "openbsd"
  packages = %w[vim emacs]
end

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
