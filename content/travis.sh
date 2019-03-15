#!/bin/sh

set -e

scriptfile="$(mktemp)"
trap 'rm "$scriptfile; exit"' INT QUIT TERM

cat > "$scriptfile" <<EOF
window.setTimeout(function() {
  window.scroll(0, 300);
}, 1000);
EOF

surf -p -b -F -z 2.8 -r $scriptfile https://travis-ci.org/diku-dk/futhark
