# See user_config.inc for build customizations
-include user_config.inc
include default_config.inc

.PHONY: all clean

all: sensor_reader

sensor_reader: clean
	$(CC) $(CFLAGS) -o $@ ${sps30_uart_sources} ${uart_sources}  ${sps30_uart_dir}/sensor_reader.c 

clean:
	$(RM) sensor_reader
