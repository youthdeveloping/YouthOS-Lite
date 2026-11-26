# YouthOS-Lite Roadmap

> A lightweight, approachable Linux distribution for learning to code and building projects.
>
> **Repository:** https://github.com/youthdeveloping/YouthOS-Lite  
> **Relationship:** Independent lightweight edition of YouthOS. Share design assets and documentation where practical, but keep the build and release pipeline independent.  
> **Status:** Planning  
> **Base direction:** Debian 13 (Trixie) minimal  
> **Maintainers:** youthdeveloping

---

## 1. Project goals

- Run smoothly on older and lower-specification computers.
- Keep the YouthOS identity and a consistent, accessible desktop experience.
- Include only essential applications by default.
- Provide a useful beginner-friendly programming environment.
- Produce a reproducible, installable ISO with documented hardware requirements.
- Keep the system maintainable: prefer Debian packages and supported configuration over custom patches.

## 2. Design principles

1. **Lightweight by default:** avoid duplicate applications, background services, visual effects, and unnecessary startup tasks.
2. **Useful, not stripped bare:** retain networking, accessibility, updates, file management, and recovery tools.
3. **Modular:** optional developer tools should be installable after setup rather than bundled into the base image.
4. **Reliable:** prioritize Debian repositories, security updates, and repeatable builds.
5. **YouthOS identity:** use original YouthOS-Lite branding, icons, wallpaper, and consistent UI styling.

## 3. Roadmap

Progress markers: `[ ]` not started · `[~]` in progress · `[x]` completed

### Phase 0 — Project foundation

- [ ] Define supported CPU architectures (initial target: amd64).
- [ ] Document minimum and recommended hardware after testing.
- [ ] Establish repository structure and contribution conventions.
- [ ] Add project README, license, and issue templates.
- [ ] Set up a reproducible Debian 13 minimal ISO build.
- [ ] Add CI to validate configuration and build artifacts.

### Phase 1 — Lightweight base system

- [ ] Start from a minimal Debian 13 installation.
- [ ] Select a lightweight desktop: evaluate minimal XFCE against LXQt on real test hardware.
- [ ] Remove unnecessary default packages and duplicate utilities.
- [ ] Review enabled services and startup applications; disable only services proven unnecessary.
- [ ] Configure a display manager and sensible power defaults.
- [ ] Verify wired networking, Wi-Fi, audio, USB, printing basics, and common laptop hardware.
- [ ] Confirm Korean language support and input method (fcitx5 + Hangul).
- [ ] Add an offline-capable first-boot welcome experience.

### Phase 2 — YouthOS-Lite visual identity

- [ ] Create an original YouthOS-Lite logo and boot splash.
- [ ] Design wallpaper, icon theme, cursor, and desktop theme.
- [ ] Configure panel, application menu, notifications, and workspace defaults.
- [ ] Create consistent login, lock, shutdown, and restart screens.
- [ ] Check readability, keyboard navigation, and accessibility.

### Phase 3 — Essential applications

- [ ] File manager and archive utility.
- [ ] Web browser (installable or included based on ISO size and memory testing).
- [ ] Text editor and terminal.
- [ ] PDF/document viewer.
- [ ] Screenshot utility and basic system monitor.
- [ ] Settings tools for display, sound, keyboard, mouse, network, and power.
- [ ] Keep optional applications out of the base image where practical.

### Phase 4 — Developer environment

- [ ] Python 3 and a beginner-friendly editor.
- [ ] Git and a simple Git configuration guide.
- [ ] HTML, CSS, and JavaScript learning examples.
- [ ] Optional Node.js development package.
- [ ] Optional VS Code installation guidance (not bundled by default unless licensing and size are reviewed).
- [ ] YouthOS learning guides and sample projects.
- [ ] Document how to install additional languages and tools.

### Phase 5 — Setup and system tools

- [ ] Simple first-run setup for username, locale, keyboard, and network.
- [ ] Friendly software installation guidance using Debian repositories.
- [ ] Update workflow with clear restart guidance when required.
- [ ] User account and permissions documentation.
- [ ] Backup, recovery, and troubleshooting documentation.
- [ ] Verify installer behavior and safe disk/partition selection before release.

### Phase 6 — Performance and compatibility

- [ ] Measure clean-boot RAM usage and idle CPU usage.
- [ ] Measure ISO size and installed disk usage.
- [ ] Test startup, shutdown, application launch, and update times.
- [ ] Compare desktop choices on the same hardware and test conditions.
- [ ] Test on a low-memory virtual machine and at least one older physical computer.
- [ ] Check suspend/resume, battery behavior, graphics, audio, Wi-Fi, and Bluetooth.
- [ ] Remove bottlenecks based on measurements, not assumptions.
- [ ] Publish benchmark results and known hardware limitations.

### Phase 7 — Release engineering

- [ ] Build ISO automatically with GitHub Actions.
- [ ] Verify ISO checksum and build provenance.
- [ ] Test live boot and installation in a virtual machine.
- [ ] Test installation and first boot on physical hardware.
- [ ] Prepare release notes, installation guide, and troubleshooting page.
- [ ] Publish an initial beta release.
- [ ] Collect feedback and fix critical issues before stable release.

### Phase 8 — Maintenance

- [ ] Define a regular rebuild and security-update process.
- [ ] Track Debian 13 lifecycle and plan future base upgrades.
- [ ] Keep a public list of known issues and supported hardware.
- [ ] Review included packages and startup services for every release.
- [ ] Maintain separate Lite release versions and changelogs.

---

## 4. Initial package policy

| Category | Default policy |
|---|---|
| Base system | Debian 13 minimal |
| Desktop | Minimal XFCE or LXQt; decide after benchmarks |
| Network | NetworkManager where appropriate |
| Korean input | fcitx5 + Hangul |
| Development | Python, Git, basic editor |
| Browser | Keep optional if it materially increases resource use |
| Heavy IDEs | Optional installation |
| Virtualization / containers | Optional installation |
| Office suite | Optional installation |

Package choices must be validated against Debian 13 availability, security support, licensing, and actual resource measurements before inclusion.

## 5. Performance targets

These are **initial goals, not verified specifications**. Record test hardware, desktop session, enabled services, and measurement method with every benchmark.

- [ ] Establish a reproducible baseline for idle RAM and CPU usage.
- [ ] Aim for a small ISO and low installed disk footprint without sacrificing essential hardware support.
- [ ] Set numerical RAM, disk, and boot-time targets after the first working image is measured.
- [ ] Compare every optimization against a known-good build to avoid regressions.

## 6. Definition of done for the first beta

- [ ] ISO builds successfully from the repository.
- [ ] ISO boots in a virtual machine and on tested physical hardware.
- [ ] Installer completes and the installed system boots.
- [ ] Korean locale and Hangul input work.
- [ ] Network, audio, display, USB, and updates work on documented test devices.
- [ ] Core programming tools launch and sample lessons work.
- [ ] No known release-blocking data-loss or installation issues remain.
- [ ] Release notes include limitations and benchmark results.

## 7. Scope boundaries

YouthOS-Lite is not intended to include every application or feature from full YouthOS. Advanced development suites, large office packages, creative applications, virtualization tools, and optional services should be installed on demand. The priority is a responsive, dependable base system.

---

*Roadmap maintained by the youthdeveloping project. Initial roadmap drafted with assistance from ChatGPT AI.*
