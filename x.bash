#! /bin/bash
set -o errexit -o pipefail -o nounset
echo COMPILING... >&2
fpc "$1.pas"
echo RUNNING... >&2
exec "$1"
