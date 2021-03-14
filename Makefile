TARGET_BIN="${HOME}/.local/bin"

all:
	echo "Attempting to install to $(TARGET_BIN)"
	mkdir -p $(TARGET_BIN)
	cp -v ./cal* $(TARGET_BIN)
