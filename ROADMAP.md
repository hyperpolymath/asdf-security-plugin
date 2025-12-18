# ASDF Security Plugin Roadmap

## Current Status: v0.1.0 - Hub-and-Spoke Mirroring

### Completed Features
- [x] **Multi-platform repository mirroring** (GitLab, Codeberg, Bitbucket)
- [x] **SHA-pinned GitHub Actions** for supply chain security
- [x] **SSH host key verification** preventing MITM attacks
- [x] **Restrictive permissions model** (`read-all`)
- [x] **Concurrency control** preventing race conditions
- [x] **Job timeout enforcement** (10 minutes max)
- [x] **Conditional execution** via repository variables

---

## Phase 1: Foundation (Current)

### Security Hardening - COMPLETE
| Item | Status |
|------|--------|
| SSH known_hosts verification | ✅ Done |
| Actions pinned to commit SHA | ✅ Done |
| Minimal GITHUB_TOKEN permissions | ✅ Done |
| Concurrency control | ✅ Done |
| Job timeouts | ✅ Done |

### Documentation - TODO
| Item | Status |
|------|--------|
| README.md with setup instructions | ⬜ Pending |
| Security policy (SECURITY.md) | ⬜ Pending |
| Contributing guidelines | ⬜ Pending |
| SSH key rotation documentation | ⬜ Pending |

---

## Phase 2: Enhanced Mirroring

### Additional Platforms
| Platform | Priority | Status |
|----------|----------|--------|
| SourceHut (sr.ht) | Medium | ⬜ Planned |
| Gitea instances | Low | ⬜ Planned |
| Self-hosted GitLab | Low | ⬜ Planned |

### Mirroring Features
| Feature | Priority | Status |
|---------|----------|--------|
| Selective branch mirroring | Medium | ⬜ Planned |
| LFS support | Medium | ⬜ Planned |
| Mirror status notifications (Slack/Discord) | Low | ⬜ Planned |
| Mirror verification/integrity checks | High | ⬜ Planned |

---

## Phase 3: Security Automation

### Dependency Security
| Feature | Priority | Status |
|---------|----------|--------|
| Dependabot configuration | High | ⬜ Planned |
| SBOM generation (CycloneDX/SPDX) | High | ⬜ Planned |
| License compliance scanning | Medium | ⬜ Planned |
| Vulnerability scanning (Trivy/Grype) | High | ⬜ Planned |

### Code Security
| Feature | Priority | Status |
|---------|----------|--------|
| Secret scanning (TruffleHog/Gitleaks) | High | ⬜ Planned |
| SAST integration (Semgrep/CodeQL) | Medium | ⬜ Planned |
| Signed commits enforcement | Medium | ⬜ Planned |
| Branch protection templates | Medium | ⬜ Planned |

---

## Phase 4: ASDF Plugin Integration

### Core Plugin Features
| Feature | Priority | Status |
|---------|----------|--------|
| ASDF plugin structure (bin/install, bin/list-all) | High | ⬜ Planned |
| Version management for security tools | High | ⬜ Planned |
| Cross-platform support (Linux, macOS) | High | ⬜ Planned |
| Plugin verification/checksums | High | ⬜ Planned |

### Bundled Security Tools
| Tool | Purpose | Status |
|------|---------|--------|
| gitleaks | Secret detection | ⬜ Planned |
| trivy | Vulnerability scanning | ⬜ Planned |
| cosign | Artifact signing | ⬜ Planned |
| syft | SBOM generation | ⬜ Planned |

---

## Phase 5: Advanced Security Features

### Supply Chain Security
| Feature | Priority | Status |
|---------|----------|--------|
| SLSA provenance generation | High | ⬜ Planned |
| Artifact attestations | High | ⬜ Planned |
| Reproducible builds verification | Medium | ⬜ Planned |
| Dependency pinning automation | Medium | ⬜ Planned |

### Audit & Compliance
| Feature | Priority | Status |
|---------|----------|--------|
| Audit logging for mirror operations | Medium | ⬜ Planned |
| Compliance reporting (SOC2, ISO27001) | Low | ⬜ Planned |
| Policy-as-code (OPA/Rego) | Low | ⬜ Planned |

---

## Configuration Requirements

### Required Secrets (Organization Level)
```
GITLAB_SSH_KEY     - SSH private key for GitLab
CODEBERG_SSH_KEY   - SSH private key for Codeberg
BITBUCKET_SSH_KEY  - SSH private key for Bitbucket
```

### Required Variables (Repository Level)
```
GITLAB_MIRROR_ENABLED    - 'true' to enable GitLab mirroring
CODEBERG_MIRROR_ENABLED  - 'true' to enable Codeberg mirroring
BITBUCKET_MIRROR_ENABLED - 'true' to enable Bitbucket mirroring
```

---

## Security Best Practices Implemented

1. **SSH Host Key Verification** - All SSH connections verify host keys from official sources
2. **Action Pinning** - All GitHub Actions pinned to specific commit SHAs
3. **Minimal Permissions** - Workflow uses `permissions: read-all`
4. **No Secret Exposure** - SSH keys never logged or exposed in artifacts
5. **Concurrency Control** - Prevents race conditions in mirror operations
6. **Timeout Enforcement** - Jobs fail after 10 minutes to prevent runaway processes

---

## Contributing

See CONTRIBUTING.md (coming soon) for guidelines on:
- Adding new mirror targets
- Security vulnerability reporting
- Code review requirements

---

## License

AGPL-3.0-or-later
