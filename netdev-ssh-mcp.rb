# typed: false
# frozen_string_literal: true

# Distribution moved from formula to cask. The disable! directive below
# makes `brew upgrade` and `brew install` print a migration message
# pointing users at the new cask path. Do not edit by hand; if the cask
# location ever changes, update the `because:` message accordingly.
class NetdevSshMcp < Formula
  desc "MCP server for SSH-based network device operations (Arista EOS, Cisco NX-OS, IOS/IOS-XE)"
  homepage "https://github.com/krisiasty/netdev-ssh-mcp"
  url "https://github.com/krisiasty/netdev-ssh-mcp/releases/download/v1.6.1/netdev-ssh-mcp_1.6.1_darwin_arm64.tar.gz"
  version "1.6.1"
  sha256 "3f5672517978803f30c76393b9dfa3c62026d263e78894dc9e114d016ea0cdb7"
  license "Apache-2.0"

  disable! date:             "2026-05-08",
           because:          "moved to a cask",
           replacement_cask: "krisiasty/tap/netdev-ssh-mcp"
end
