CXX = g++
CXXFLAGS = -std=c++17 -O2
SRC = src/main.cpp
INC = -Isrc
OUT = raytracer

all: $(OUT)

$(OUT): $(SRC) src/color.h src/vec3.h
	$(CXX) $(CXXFLAGS) $(INC) -o $(OUT) $(SRC)

clean:
	del /Q $(OUT) 2>nul || rm -f $(OUT)

.PHONY: all clean