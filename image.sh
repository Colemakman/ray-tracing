#!/bin/bash

# Compile the C++ code
g++ -std=c++17 -O2 -o raytracer main.cpp
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Run the compiled program
./raytracer > output.ppm
if [ $? -ne 0 ]; then
    echo "Execution failed."
    exit 1
fi

# Convert output.ppm to output.png
convert output.ppm output.png
if [ $? -ne 0 ]; then
    echo "Conversion failed."
    exit 1
fi

rm output.ppm

echo "Done: output.png created."
