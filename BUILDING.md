# Building YouthOS-Lite

## Requirements

- Debian 13 (Trixie) amd64 build host or a compatible Debian container
- Root privileges for live-build
- Internet access to Debian package mirrors
- At least 4 GB free disk space (8 GB or more recommended)
- At least 2 CPU cores recommended

## Install dependencies

```bash
sudo apt update
sudo apt install -y live-build debootstrap squashfs-tools xorriso
```

## Configure and build

From the repository root:

```bash
sudo lb config
sudo lb build
```

The build configuration is maintained in `config/auto/config`. Package selections are in `config/package-lists/`.

To remove generated build state before a clean rebuild:

```bash
sudo lb clean --purge
sudo lb config
sudo lb build
```

The generated ISO should appear in the repository root. The exact filename may vary with the live-build version and configuration.

## GitHub Actions

The workflow at `.github/workflows/build-iso.yml` builds inside a Debian Trixie container and uploads the resulting ISO as an artifact. Open the repository's **Actions** tab, select **Build YouthOS-Lite ISO**, and download the artifact from a successful run.

## Important notes

- This is an early development image. A successful build only proves that the image was produced; it does not prove that boot, installation, Wi-Fi, audio, graphics, or suspend work on every computer.
- Test in a disposable virtual machine first. Back up important data before any physical installation test.
- The current image is a live system. Installer availability and installation behavior must be verified separately before advertising it as installable.
- Do not add proprietary firmware or third-party repositories without reviewing licensing, security, and distribution requirements.
