#!/usr/bin/env bash
set -euo pipefail

FECHA=$(date +"%Y%m%d_%H%M%S")
RTA_DIR="$PWD/RTA_Examen_$FECHA"
mkdir -p "$RTA_DIR"

CMD_FILE="$RTA_DIR/comandos_ejecutados.txt"
OUT_FILE="$RTA_DIR/salida_playbook.txt"

echo "ansible-playbook -i localhost, -c local playbooks/punto_d_play.yml" | tee "$CMD_FILE"

ansible-playbook -i localhost, -c local playbooks/punto_d_play.yml \
  | tee "$OUT_FILE"

echo "Resultado guardado en: $RTA_DIR"
