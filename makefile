CMD    := cmake
SCRIPT := -P update.cmake

cmake: 
	$(CMD) -DTOOL=cmake -DREPO="Kitware/CMake" $(SCRIPT)

conan: 
	$(CMD) -DTOOL=conan -DREPO="conan-io/conan" $(SCRIPT)

sccache: 
	$(CMD) -DTOOL=sccache -DREPO="mozilla/sccache" $(SCRIPT)