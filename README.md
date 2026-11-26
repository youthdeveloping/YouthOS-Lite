# YouthOS-Lite

**A lightweight Debian-based desktop for learning, coding, and everyday use.**

YouthOS-Lite is the lightweight sibling of [YouthOS](https://github.com/youthdeveloping/YouthOS). It aims to provide a responsive desktop and a small, practical developer toolkit for older and lower-specification computers.

## Project status

<badge>Early development</badge>

The repository currently contains the first ISO build configuration. The image is experimental and has **not yet been validated on physical hardware**. Do not use it as a production or data-critical operating system.

## Current technical direction

- Debian 13 (Trixie)
- amd64 ISO-hybrid image
- Minimal XFCE desktop
- Korean locale and Hangul input support
- Essential system utilities and beginner development tools
- GitHub Actions build pipeline

## Build locally

On a Debian 13 build machine, install the build dependencies:

```bash
sudo apt update
sudo apt install -y live-build debootstrap squashfs-tools xorriso
```

Then run:

```bash
sudo lb config
sudo lb build
```

The generated ISO is written to the repository root. See [BUILDING.md](BUILDING.md) for details.

## Automated builds

Pushes to `main` that change the build configuration, plus manual workflow dispatches, trigger GitHub Actions. Successful builds are uploaded as workflow artifacts. They are experimental artifacts, not stable releases.

## Documentation

- [Roadmap](ROADMAP.md)
- [Build guide](BUILDING.md)
- [Contributing](CONTRIBUTING.md)

## License

The project is licensed under the GNU General Public License v3.0 or later. See [LICENSE](LICENSE).
