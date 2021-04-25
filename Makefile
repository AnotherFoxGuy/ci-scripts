all : cmake sccache

cmake:
	cmake -DTOOL=cmake -DREPO=kitware -P update.cmake

sccache:
	cmake -DTOOL=sccache -DREPO=mozilla -P update.cmake
