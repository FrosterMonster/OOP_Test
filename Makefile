CXX = g++
CXXFLAGS = -Wall -std=c++11 -Iinc
TARGET = Lab07
SRCDIR = src
OBJDIR = obj
INCDIR = inc

SOURCES = $(SRCDIR)/Cylinder.cpp main.cpp
OBJECTS = $(OBJDIR)/Cylinder.o $(OBJDIR)/main.o

all: $(OBJDIR) $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJDIR)/Cylinder.o: $(SRCDIR)/Cylinder.cpp $(INCDIR)/Cylinder.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJDIR)/main.o: main.cpp $(INCDIR)/Cylinder.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: all clean

