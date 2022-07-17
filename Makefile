deps :
	yarn

styles : deps
	./node_modules/sass/sass.js \
		./static/styles/main.scss:./static/styles/main.css \
		--update

styles-watch : deps
	./node_modules/sass/sass.js \
		./static/styles/main.scss:./static/styles/main.css \
		--watch

serve : styles
	echo "Starting server on http://localhost:8080/"
	python3 -m http.server
