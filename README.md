# gRPS protos

## Requirements

- `protoc`
- `protoc-gen-go`
- `protoc-gen-go-grpc`

Install Go plugins:

```
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

Make sure `$GOPATH/bin` (or `$(go env GOPATH)/bin`) is in your `PATH`.

## Generate Go code

From the `protos` directory:

```
make
```

Or explicitly:

```
make generate
```

## Clean generated code

```
make clean
```
