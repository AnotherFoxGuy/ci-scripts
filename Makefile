all : cmake conan sccache

cmake:
	cmake -DTOOL=cmake -DREPO=kitware -P update.cmake

conan:
	cmake -DTOOL=conan -DREPO=conan-io -P update.cmake

sccache:
	cmake -DTOOL=sccache -DREPO=mozilla -P update.cmake
