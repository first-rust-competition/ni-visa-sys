BINDGEN ?= bindgen
CLANG_FLAGS ?= --target=armv7-unknown-linux-gnueabi
HEADERS = include/visa/visa.h include/visa/visatypes.h

all: src/bindings.rs src/consts.rs

$(HEADERS):

src/bindings.rs: $(HEADERS)
	$(BINDGEN) --whitelist-function='vi.*' --blacklist-type='ViU?(Int\d+|Byte)|(__u|u_)int64_t|ViVAList|va_list' --blacklist-function='viV[A-Z].*' $< -o $@ -- $(CLANG_FLAGS)

src/consts.rs: $(HEADERS)
	$(BINDGEN) --whitelist-var='VI_.*' --blacklist-item='VI_(TRUE|FALSE)' $< -o $@ -- $(CLANG_FLAGS)

.PHONY: all
