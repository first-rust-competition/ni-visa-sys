#!/bin/sh

target=armv7-unknown-linux-gnueabi

bindgen --whitelist-function='vi.*' --blacklist-type='ViU?(Int\d+|Byte)|(__u|u_)int64_t|ViVAList|va_list' --blacklist-function='viV[A-Z].*' include/visa/visa.h -- --target=$target > src/bindings.rs
bindgen --whitelist-var='VI.*' include/visa/visa.h -- --target=$target > src/consts.rs
