build:
	wkhtmltopdf \
      --enable-local-file-access \
      --user-style-sheet fonts/print.css \
      --print-media-type \
      --page-size A4 \
      -T 12mm -R 10mm -B 0mm -L 14mm \
      public/index.html public/CV_PauloRodriguesPinto.pdf

watch:
	ls public/index.html public/style.css | entr sh -c 'make && /usr/bin/osascript -e "tell application \"Google Chrome\" to reload active tab of window 1"'
