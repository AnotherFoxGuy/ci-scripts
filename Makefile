all : cmake sccache lazygit

cmake:
	cmake -DTOOL=cmake -DREPO=kitware -P update.cmake

sccache:
	cmake -DTOOL=sccache -DREPO=mozilla -P update.cmake

lazygit:
	cmake -DTOOL=lazygit -DREPO=jesseduffield -P update.cmake