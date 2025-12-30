#!/usr/bin/env bash

add_wants_niri() {
    sed -i "s/\[Unit\]/\[Unit\]\nWants=$1/" "/usr/lib/systemd/user/niri.service"
}
add_wants_niri udiskie.service
add_wants_niri foot-server.service
cat /usr/lib/systemd/user/niri.service
