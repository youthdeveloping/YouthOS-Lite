# Contributing

Thanks for helping with YouthOS-Lite!

## Before making changes

- Read [ROADMAP.md](ROADMAP.md) and [BUILDING.md](BUILDING.md).
- Keep the default installation small and avoid duplicate applications.
- Prefer packages from Debian 13 (Trixie).
- Explain why a package or background service is needed.
- Do not claim hardware compatibility without testing it.

## Testing

For build-related changes:

1. Run a clean ISO build.
2. Confirm the ISO is produced and has a non-zero size.
3. Boot it in a virtual machine when possible.
4. Record the VM configuration and any failures in the pull request.

For desktop or hardware changes, include the device model, relevant hardware, test steps, and observed result.

## Commit style

Use short, descriptive messages, for example:

- `build: add minimal XFCE session`
- `docs: clarify ISO testing process`
- `fix: correct live boot configuration`

## Safety

Never commit passwords, access tokens, private keys, or personal data. Avoid destructive disk operations in scripts. Any installer or partitioning change requires careful review and explicit testing.
