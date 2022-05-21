#!/usr/bin/env bash
set -euo pipefail

BIN=honeyvent
VSN=1.1.2
RELEASE_URL=https://github.com/honeycombio/honeyvent/releases/download/v${VSN}
TEST_CMD="#{bin}/${BIN} -h"

RB_FILE=${BASH_SOURCE[0]%.tpl}

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
source ${DIR}/zz-golang.rb.tpl
