.PHONY: run
run:
	JEKYLL_ENV=development jekyll serve --drafts

clean:
	jekyll clean

publish:
	./scripts/publish.sh
