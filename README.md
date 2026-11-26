# YouthOS-Lite

**A lightweight Debian-based desktop for learning, coding, and everyday use.**

YouthOS-Lite is the lightweight sibling of [YouthOS](https://github.com/youthdeveloping/YouthOS). It aims to provide a responsive desktop and a small, practical developer toolkit for older and lower-specification computers.

## Project status

**Early development — experimental ISO build.**

The repository contains a Debian 13 live-build configuration and an automated GitHub Actions pipeline. The first ISO has not yet passed a complete build-and-boot validation cycle, and the system has **not been validated on physical hardware**. Do not use it as a production or data-critical operating system.

Follow [ROADMAP.md](ROADMAP.md) for current progress.

## Current technical direction

- Debian 13 (Trixie)
- amd64 ISO-hybrid image
- Minimal XFCE desktop
- Korean locale and fcitx5 Hangul input support
- Essential system utilities and beginner development tools
- Automated package availability checks
- GitHub Actions ISO build and artifact upload

## Build locally

On a Debian 13 build machine, install the build dependencies:

```bash
sudo apt update
sudo apt install -y live-build debootstrap squashfs-tools xorriso dosfstools mtools
```

From the repository root, run:

```bash
sudo sh scripts/build-local.sh
```

The helper configures and builds the image, then checks for an ISO and prints its SHA256 checksum. See [BUILDING.md](BUILDING.md) for details.

## Automated builds

Pushes to `main` that change the build configuration, scripts, or roadmap, plus manual workflow dispatches, trigger GitHub Actions. The workflow checks package names against the Debian repositories before starting live-build. Successful ISO files are uploaded as the `youthos-lite-iso` artifact for seven days. Artifacts are experimental and are not stable releases.

## Documentation

- [Roadmap](ROADMAP.md)
- [Build guide](BUILDING.md)
- [Contributing](CONTRIBUTING.md)

## License

The project is licensed under the GNU General Public License v3.0 or later. See [LICENSE](LICENSE).
