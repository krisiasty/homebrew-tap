# typed: false
# frozen_string_literal: true

# Distribution moved from formula to cask. The disable! directive below
# makes `brew upgrade` and `brew install` print a migration message
# pointing users at the new cask path. Do not edit by hand; if the cask
# location ever changes, update the `because:` message accordingly.
class CheckSsh < Formula
  desc "Audits sshd for weak or insecure algorithms across local, file-based, and remote scans, and generates a drop-in hardening config"
  homepage "https://github.com/krisiasty/check-ssh"
  url "https://github.com/krisiasty/check-ssh/releases/download/v1.0.1/check-ssh_1.0.1_darwin_arm64.tar.gz"
  version "1.0.1"
  sha256 "561d977cb3c2bd9bb960182858fffedc42dee672a1e6fa27032d7d59e5efd566"
  license "Apache-2.0"

  disable! date:             "2026-05-08",
           because:          "moved to a cask",
           replacement_cask: "krisiasty/tap/check-ssh"
end
