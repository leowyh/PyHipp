#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
for filename in *.out; do
	echo "==> $filename <=="
	head -n 1 $filename
	echo ""
done
echo "End Times"
for filename in *.out; do
        echo "==> $filename <=="
        tail -n 5 $filename
        echo ""
done
