#!/usr/bin/env bash

wkhtmltopdf --print-media-type --page-size A4 -L 14mm -T 12mm -B 0mm -R 10mm index.html out.pdf
