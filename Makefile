include ../../modules/makefiles/definitions

INSTALL_DIR = $(TOOLS_DIR)/bin

# Additional fortran compilation flags
FFLAGS =  -O

# Additional linker flags
LFLAGS =  -lmodules

# Targets ...

TARGETS = catmol2 # mol2bonds

all: $(TARGETS)

catmol2: catmol2.o
	$(FC) $(FFLAGS) -o $@ $^ $(LFLAGS)

mol2bonds: mol2bonds.o
	$(FC) $(FFLAGS) -o $@ $^ $(LFLAGS)

install: $(TARGETS)
	cp $(TARGETS) $(INSTALL_DIR)

clean:
	rm -f *.$(OBJSUFFIX) *.$(MODSUFFIX) $(TARGETS)
