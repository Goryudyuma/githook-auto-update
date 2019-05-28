GIT_TOPLEVEL_DIRECTORY=$(shell git rev-parse --show-toplevel)

init:
ifeq (,$(wildcard $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/post-merge))
else
	mv $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/post-merge $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/post-merge-local
endif
	cp $(GIT_TOPLEVEL_DIRECTORY)/post-merge $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/post-merge
ifeq (,$(wildcard $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/pre-commit))
else
	mv $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/pre-commit $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/pre-commit-local
endif
	cp $(GIT_TOPLEVEL_DIRECTORY)/pre-commit $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/pre-commit

update-hooks:
	cp $(GIT_TOPLEVEL_DIRECTORY)/post-merge $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/post-merge
	cp $(GIT_TOPLEVEL_DIRECTORY)/pre-commit $(GIT_TOPLEVEL_DIRECTORY)/.git/hooks/pre-commit
