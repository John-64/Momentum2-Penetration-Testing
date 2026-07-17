#!/bin/bash

set -euo pipefail

USER_ATHENA="athena"
PASS_ATHENA='myvulnerableapp*'

command -v expect >/dev/null || { echo "[-] expect non installato."; exit 1; }

echo "[*] Passaggio all'utenza ${USER_ATHENA}..."
expect -c "
spawn su - ${USER_ATHENA}
expect \"Password:\"
send \"${PASS_ATHENA}\r\"
interact
"