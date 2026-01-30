;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - Project ecosystem positioning

(ecosystem
  (version "1.0.0")
  (name "asdf-security-plugin")
  (type "asdf-plugin")
  (purpose "Version management for Security scanning tools")

  (position-in-ecosystem
    (category "developer-tools")
    (subcategory "version-management")
    (layer "user-facing"))

  (related-projects
    (sibling-standard
      (name "asdf")
      (relationship "plugin-host")
      (url "https://asdf-vm.com"))
    (sibling-standard
      (name "security")
      (relationship "managed-tool")
      (url "https://github.com/hyperpolymath/asdf-security-plugin")))

  (what-this-is
    "An asdf plugin for managing Security scanning tools versions")

  (what-this-is-not
    "Not a standalone version manager"
    "Not a replacement for the tool itself"))
