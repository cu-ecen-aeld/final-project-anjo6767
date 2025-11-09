#!/bin/bash

echo "Cleaning Buildroot output..."
make -C "$(pwd)/buildroot" distclean
echo "Done."

chmod +x clean.sh
