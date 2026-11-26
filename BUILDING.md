# Building YouthOS-Lite

## Requirements

- Debian 13 (Trixie) amd64 build host or a compatible Debian container
- Root privileges for live-build
- Internet access to Debian package mirrors
- At least 8 GB free disk space recommended
- At least 2 CPU cores recommended

## Install dependencies

```bash
sudo apt update
sudo apt install -y live-build debootstrap squashfs-tools xorriso dosfstools mtools
```

## Configure and build

From the repository root, use the helper:

```bash
sudo sh scripts/build-local.sh
```

The helper runs the live-build configuration, creates the ISO, verifies that an image exists, and prints its SHA256 checksum.

The configuration is maintained in `config/auto/config`. Package selections are in `config/package-lists/youthos-lite.list.chroot`.

To validate package names manually after updating package indexes:

```bash
sudo apt update
sh scripts/check-packages.sh
```

To remove generated build state before a clean rebuild:

```bash
sudo lb clean --purge
sudo sh scripts/build-local.sh
```

The generated ISO should appear in the repository root. The exact filename may vary with the live-build version and configuration.

## GitHub Actions

The workflow at `.github/workflows/build-iso.yml` runs on an Ubuntu GitHub-hosted runner and performs the live-build process inside a privileged Debian Trixie container. Before building, it checks every package in the YouthOS-Lite package list against the Debian package indexes. A successful build is checked for a non-empty ISO, its SHA256 checksum is printed, and the ISO is uploaded as the `youthos-lite-iso` artifact for seven days.

Open the repository's **Actions** tab, select **Build YouthOS-Lite ISO**, open a successful run, and download its artifact.

## Important notes

- This is an early development image. A successful build only proves that the image was produced; it does not prove that boot, installation, Wi-Fi, audio, graphics, or suspend work on every computer.
- Test in a disposable virtual machine first. Back up important data before any physical installation test.
- The current configuration requests the Debian live installer. Installer availability and installation behavior must be verified separately before advertising it as installable.
- Do not add proprietary firmware or third-party repositories without reviewing licensing, security, and distribution requirements.
