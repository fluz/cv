# DevResume

> This theme is designed by Xiaoying Riley at [3rd Wave Media](http://themes.3rdwavemedia.com/).
> Visit her [website](http://themes.3rdwavemedia.com/) for more themes.

## Introduction

This template provide DevResume view for my cv, in a clean schema.

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
python ./tools/jinja2-render -y fluz.yml -o dist/index.html DevResume/index.html.jinja
```

## About this template

DevResume is a **free Bootstrap 4 resume/CV template** made for software developers. Built on **Bootstrap 4 and SASS**, it's quick and easy to change the template styling.

## Author & License

This Bootstrap template is made by UX/UI designer [Xiaoying Riley](https://twitter.com/3rdwave_themes) for developers and is 100% FREE as long as you **keep the footer attribution link**. You do not have the rights to resell, sublicense or redistribute (even for free) the template on its own or as a separate attachment from any of your work.

If you'd like to **use the template without the attribution link**, you can [buy the **commercial license** via the theme website](https://themes.3rdwavemedia.com/bootstrap-templates/resume/devresume-free-bootstrap-4-resume-cv-template-for-developers/)

## Credits

- [Bootstrap](http://getbootstrap.com/)
- [FontAwesome](http://fortawesome.github.io/Font-Awesome/)
- [Xiaoying Riley](https://twitter.com/3rdwave_themes)
- [Leandro Penz](http://cv.lpenz.org/)
