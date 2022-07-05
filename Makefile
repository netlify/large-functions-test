timestamp = $(shell date)

build:
	mkdir -p netlify/functions
	sed -e 's/REPLACEME/$(timestamp)/g' netlify/function-template.js > netlify/functions/size-9mb.js
	sed -e 's/REPLACEME/$(timestamp)/g' netlify/function-template.js > netlify/functions/size-44mb.js
