# MizukiOS 🎀 &nbsp; [![bluebuild build badge](https://github.com/koitorin/mizukios/actions/workflows/build.yml/badge.svg)](https://github.com/koitorin/mizukios/actions/workflows/build.yml)

Opionated Fedora Atomic based on [Zirconium](https://github.com/zirconium-dev/zirconium) tailored for gaming, built with Niri and CachyOS Kernel, and Steam pre-installed, with the character [Akiyama Mizuki](https://www.sekaipedia.org/wiki/Akiyama_Mizuki) as default theming, full of pink and ribbons!

<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-07-12" src="https://github.com/user-attachments/assets/b02bf5fb-4ae1-4e92-9015-93d9b3961b24" />
<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-07-20" src="https://github.com/user-attachments/assets/ce54e12a-f912-473f-97ae-d7e016ed9e40" />

## Installation

> Currently only AMD/Intel GPUs and AMD64 CPUs are supported.

- Install Zirconium from their ISO here: https://isos.zirconium.gay/zirconium-isos/zirconium-amd64.iso
You can also use other Fedora Atomic systems, like Bluefin or Bazzite.

- After the installion is complete, use this command to rebase to MizukiOS
  ```
  sudo bootc switch ghcr.io/zirconium-dev/zirconium:latest
  ```

## ISO

TBD

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/koitorin/mizukios
```

## Shouts

- [Zirconium](https://github.com/zirconium-dev/zirconium) - Big inspiration for MizukiOS, the first bootc image to explore Niri, and the base for this project! Huge credits for the girls!
- [VedaOS](https://github.com/Lumaeris/vedaos) - Similar image to MizukiOS but with GNOME! Huge credits to the work Luma put here, and thanks for letting borrow some code! 
- [XeniaOS](https://github.com/XeniaMeraki/XeniaOS) - Another Niri bootc image and CachyOS Kernel like MizukiOS but from Arch bootc! Experimental but this is so cool!
- [Piperita](https://github.com/tulilirockz/piperita) - A MizukiOS sister of some kind? It's Zirconium with CachyOS Kernel, nice!!
- [Entire Bootcrew project](https://github.com/bootcrew) - The basics for the bootc future!
