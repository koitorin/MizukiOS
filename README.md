# MizukiOS 🎀 &nbsp; [![bluebuild build badge](https://github.com/koitorin/mizukios/actions/workflows/build.yml/badge.svg)](https://github.com/koitorin/mizukios/actions/workflows/build.yml)

Opionated Fedora Atomic based on [Zirconium](https://github.com/zirconium-dev/zirconium) tailored for gaming, built with Niri and CachyOS Kernel, and Steam pre-installed, with the character [Akiyama Mizuki](https://www.sekaipedia.org/wiki/Akiyama_Mizuki) as default theming, full of pink and ribbons!

<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-07-12" src="https://github.com/user-attachments/assets/b02bf5fb-4ae1-4e92-9015-93d9b3961b24" />
<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-07-20" src="https://github.com/user-attachments/assets/ce54e12a-f912-473f-97ae-d7e016ed9e40" />
<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-07-30" src="https://github.com/user-attachments/assets/136ebf91-443a-4ce5-93b5-ebce69fc3b45" />
<img width="1920" height="1080" alt="Screenshot_from_2025-12-30_19-17-09" src="https://github.com/user-attachments/assets/d74e251c-b51e-4ad0-86cf-660b568eb2de" />

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/koitorin/mizukios:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/koitorin/mizukios:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

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
