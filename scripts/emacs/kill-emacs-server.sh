#!/bin/sh

if pgrep -i emacs > /dev/null; then
  echo 'emacs is up. proceeding to the kill...'
else
  echo 'emacs is not running. Nothing to do.'
  exit 0
fi

echo 'killing emacs server...'
emacsclient.sh --server-file=terminal -e "(kill-emacs)"; rc=$?

if [[ $rc = 0 ]]; then
  echo 'emacs killed.'
else
  echo "there was a problem killing emacs: $rc"
fi
