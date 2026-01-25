#!/usr/bin/env bash

set -eu

ROOT_DIR="$(dirname "$(readlink -f "$0")")"
LATEXMK=(
    "latexmk"
    "--cd"
    "--lualatex"
    "--outdir=${ROOT_DIR}/build"
    "--auxdir=${ROOT_DIR}/build"
    "${ROOT_DIR}/main.tex"
)

"${LATEXMK[@]}"
