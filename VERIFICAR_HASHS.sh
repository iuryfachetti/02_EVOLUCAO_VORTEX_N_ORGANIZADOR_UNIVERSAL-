#!/usr/bin/env bash
set -euo pipefail

echo "=============================================="
echo "VERIFICADOR DE INTEGRIDADE - VORTEX SECURITY 02"
echo "=============================================="
echo

ARQUIVO_HASH="SHA256SUMS.txt"

if [ ! -f "$ARQUIVO_HASH" ]; then
    echo "ERRO: arquivo $ARQUIVO_HASH nao encontrado."
    exit 1
fi

echo "Arquivo de hashes encontrado: $ARQUIVO_HASH"
echo "Total de registros:"
wc -l "$ARQUIVO_HASH"
echo

echo "Iniciando verificacao..."
echo

sha256sum -c "$ARQUIVO_HASH"

echo
echo "=============================================="
echo "VERIFICACAO CONCLUIDA"
echo "=============================================="
