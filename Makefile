.PHONY.: all

setup:
	curl -sf https://goblin.barelyhuman.xyz/codeberg.org/reaper/alvu | sh

build:  
	alvu -highlight -highlight-theme=xcode-dark

watch:
	find pages/ | entr -rz alvu -serve

w: watch
