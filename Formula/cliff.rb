# typed: false
# frozen_string_literal: true

class Cliff < Formula
  include Language::Python::Virtualenv

  desc "Generate Unix commands in the terminal"
  homepage "https://github.com/pkelaita/cliff"
  url "https://files.pythonhosted.org/packages/05/e3/1a4328d9723fc67977a426e8800aa907ea8b0f184fe84596a0c22062cc2c/cliff_cli-0.0.1.tar.gz"
  sha256 "328bccafe8318b7965c25a250a165d7ff5cd21b397ac17572c2474de0097900c"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/cliff --version")
    assert_match "0.0.1", output
  end
end
