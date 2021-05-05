#!/bin/bash

cd go-cosmwasm && cargo build --release
cp go-cosmwasm/target/release/deps/libgo_cosmwasm.so go-cosmwasm/api
# FIXME: re-enable stripped so when we approach a production release, symbols are nice for debugging
# strip api/libgo_cosmwasm.so
