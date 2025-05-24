#!/bin/bash

make
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

./raytracer > output.ppm
if [ $? -ne 0 ]; then
    echo "Execution failed."
    exit 1
fi

convert output.ppm output.png
if [ $? -ne 0 ]; then
    echo "Conversion failed."
    exit 1
fi

rm output.ppm

echo "Done: output.png created."
