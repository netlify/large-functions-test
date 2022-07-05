timestamp = $(shell date)

build:
	sed -e 's/REPLACEME/$(timestamp)/g' netlify/function-template.js > netlify/functions/size-9mb.js
	sed -e 's/REPLACEME/$(timestamp)/g' netlify/function-template.js > netlify/functions/size-44mb.js
	sed -e 's/REPLACEME/$(timestamp)/g' netlify/function-template.js > netlify/functions/size-90mb.js
