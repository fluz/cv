# CeeVee

> This theme is designed by Erwin Aligam at [Style Shout](http://www.styleshout.com/).
> Visit his [website](http://www.styleshout.com/) for more themes.

## Introduction

This template provide CeeVee view for my Resume.

## Generating this view

First, in the project root, I prepare the dist folder

```bash
rm -rf dist
mkdir dist
mkdir dist/assets
cp -r assets/css dist/assets
cp -r assets/fontawesome dist/assets
cp -r assets/images dist/assets
cp -r assets/js dist/assets
```

Then, I generate the DevResume view

```bash
python ./tools/jinja2-render -y fluz.yml -o dist/cv_ceevee.html ceevee/index.html.jinja
```

## About this template

CeeVee is a clean, modern, fully responsive site template for your resume and portfolio. With this template, you can easily introduce yourself and showcase your works to future clients and employers. Also, it is flexible and easy to customize so you even use this template as a creative, business or portfolio site for your company.

## Author & License

This template is made by UX/UI designer [Erwin Aligam](https://twitter.com/styleshout) for developers and is 100% FREE as long as you **keep the footer attribution link**. You do not have the rights to resell, sublicense or redistribute (even for free) the template on its own or as a separate attachment from any of your work.

And they understand that there are situations where you want to use the templates without the crediting obligation. If you'd like to **use the template without the attribution link**, you can always send an attribution removal fee of 10 USD through PayPal to this address: **ealigam[at]gmail.com**. This will allow you to use a single template attribution/credit link free on one domain name. To remove the credit, go to this [website](https://www.styleshout.com/attribution-free/).

## Credits

- [FontAwesome](http://fortawesome.github.io/Font-Awesome/)
- [Style Shout](http://www.styleshout.com/)
- [Leandro Penz](http://cv.lpenz.org/)
