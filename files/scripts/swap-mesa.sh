#!/usr/bin/env bash

set -xeuo pipefail

dnf -y remove mesa-filesystem
dnf -y --enablerepo=terra --enablerepo=terra-mesa install mesa-filesystem
