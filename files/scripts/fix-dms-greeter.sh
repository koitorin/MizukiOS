#!/usr/bin/env bash

# REQUIRED for dms-greeter to work
tee /usr/lib/sysusers.d/greeter.conf <<'EOF'
g greeter -
u greeter - "Greetd greeter"
EOF
