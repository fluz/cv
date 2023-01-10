# europasscv
Unofficial class for the new version of the Europass curriculum vitae

[![Donate][donate-btn]][donate-url]

This class is an unofficial LaTeX implementation of the Europass CV, the
standard model for curriculum vitae as recommended by the European Commission.

The Europass CV replaces the European CV, launched in 2002. In 2013 a major
revision of the Europass CV came out, featuring a neater, more compact and
somewhat fancier layout. This class is an implementation of the 2013 version of
that layout.

:warning: | At the moment this class does not implement the newest europass layouts that were launched in 2020.
:---: | :---

The Europass CV defines both the content and the layout of a curriculum vitae.
The `europasscv` class provides support for the latter, and for the former as
far as personal information, spoken languages and digital competences are
concerned. This class tries to be as close as possible to the standard model
without sacrificing flexibility.

## License
This ma­te­rial is sub­ject to the LaTeX Project Public Li­cense Version 1.3.

## Download
Please install the `europasscv` package through the package manager of your TeX
distribution or download it from [CTAN](https://www.ctan.org/pkg/europasscv).

## How to use
Please refer to the
[documentation](https://www.devrandom.it/software/europasscv/)
for instructions on how to use the class.

## Development
Source packages and trees available on
[github](https://github.com/gmazzamuto/europasscv) come with a `Makefile` that
is needed to convert svg images into pdfs. Please run `make` to build pdf icons,
examples and documentation. You need to have `inkscape` installed on your system
in order to convert the icons.

[donate-btn]: https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif
[donate-url]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=H94QELJUXWFWA&source=url
