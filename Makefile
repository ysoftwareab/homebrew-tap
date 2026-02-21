.DEFAULT_TARGET := test
BREW := $(shell command -v brew)
GITHUB_ACTIONS ?=

.PHONY: test
test:
	# $(BREW) test-bot --only-cleanup-before
	# $(BREW) test-bot --only-setup
	$(BREW) test-bot --only-tap-syntax
ifneq (,$(GITHUB_ACTIONS))
	$(BREW) test-bot --only-formulae
endif
