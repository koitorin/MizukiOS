#!/usr/bin/env bash

set -xeuo pipefail

dnf swap --repo=terra-mesa -y mesa-filesystem mesa-filesystem
