PROTO_DIR := proto
GEN_DIR := gen/go
PROTO_FILES := $(shell find $(PROTO_DIR) -name '*.proto')

.PHONY: all generate clean

all: generate

generate:
	@mkdir -p $(GEN_DIR)
	protoc -I $(PROTO_DIR) $(PROTO_FILES) \
		--go_out=$(GEN_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=source_relative

clean:
	rm -rf $(GEN_DIR)
