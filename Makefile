TARGET = main
SRC_DIR = src
BUILD_DIR = build
CFLAGS = --model-small --opt-code-speed

.PHONY: all
all: $(BUILD_DIR)/$(TARGET).hex

# 生成 .ihx
$(BUILD_DIR)/$(TARGET).ihx: $(SRC_DIR)/$(TARGET).c
	if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)
	sdcc $(CFLAGS) -o $(BUILD_DIR)/$(TARGET).ihx $<

# 生成 .hex
$(BUILD_DIR)/$(TARGET).hex: $(BUILD_DIR)/$(TARGET).ihx
	packihx $< > $@

flash: $(BUILD_DIR)/$(TARGET).ihx
	stcgal -P stc89 -p COM3 $<

clean:
	if exist $(BUILD_DIR) rmdir /S /Q $(BUILD_DIR)

.PHONY: clean flash