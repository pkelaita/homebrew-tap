.PHONY: *

update-deps:
	HOMEBREW_NO_AUTO_UPDATE=1 brew tap pkelaita/homebrew-tap >/dev/null 2>&1 || true; \
	TAP_DIR=$$(brew --repo pkelaita/homebrew-tap); \
	cp "./Formula/cliff.rb" "$$TAP_DIR/Formula/cliff.rb"; \
	HOMEBREW_NO_AUTO_UPDATE=1 brew update-python-resources pkelaita/homebrew-tap/cliff; \
	cp "$$TAP_DIR/Formula/cliff.rb" "./Formula/cliff.rb"