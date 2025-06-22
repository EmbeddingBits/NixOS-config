.PHONY: update
update:
	home-manager switch --flake .#embeddingbits
.PHONY: clean
clean:
	nix-collect-garbage -d
