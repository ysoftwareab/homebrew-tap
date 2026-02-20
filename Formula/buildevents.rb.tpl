#!/usr/bin/env bash
set -euo pipefail

BIN=buildevents
VSN=0.18.0
RELEASE_URL=https://github.com/honeycombio/buildevents/releases/download/v${VSN}
TEST_CMD="#{bin}/${BIN} -h"

RB_FILE=${BASH_SOURCE[0]%.tpl}

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
source ${DIR}/zz-golang.rb.tpl
