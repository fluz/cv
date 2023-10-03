# Markdown Views

## Introduction

This template provide a markdown view (and some variants) for my Resume.

## Generating this view

In the project root, I generate the markdown view with

```bash
python ./tools/jinja2-render -y fluz.yml -o dist/cv_ceevee.html ceevee/index.html.jinja
```

And then, I'm able to generate the text view

```bash
pandoc -f markdown -t plain -s -o dist/cv_fernando_luz_md.txt dist/cv_fernando_luz.md
```

And html view, based on markdown

```bash
pandoc -f markdown -t html -V "pagetitle:Fernando Luz's Resume" --data-dir=assets/templates  --css default.css -o dist/cv_fernando_luz_md.html dist/cv_fernando_luz.md
```

## Credits

- [Pandoc](http://pandoc.org)
- [Leandro Penz](http://cv.lpenz.org/)
