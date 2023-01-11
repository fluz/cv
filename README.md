[![FLUZ](https://img.shields.io/circleci/build/github/fluz/cv?style=plastic&token=83c15bcb622cc21f3aaee690ade9c8cacc3cb466)](https://app.circleci.com/pipelines/github/fluz/cv?branch=master)

# Fernando Luz's CV

## CV formats

My CV is available in the following formats, or layouts:

### Current views

- [DevResume](https://fluz.github.io/cv/index.html) (HTML)
- [CeevVee](https://fluz.github.io/cv/cv_ceevee.html) (HTML)
- [markdown](https://fluz.github.io/cv/cv_fernando_luz.md) (markdown) and two rendered versions:
  - [plain text](https://fluz.github.io/cv/cv_fernando_luz_md.txt)
  - [html](https://fluz.github.io/cv/cv_fernando_luz_md.html)
- [europassCV](https://fluz.github.io/europasscv/cv.pdf)

## Behind the scenes

I keep my *Curriculum Vitae* using software development techniques, namely:

- Maintain the source code in [github](https://github.com/fluz/cv).
- Create different views for the same base [fluz.yml](https://github.com/fluz/cv/fluz.yml)
- Use automated deploy with CircleCI.

## To do

- Code validation ?

## Structure

The structure of the data is as follows:

- fluz.yml: single data source in [YAML](http://yaml.org/).

## Acknowledges

- [Eric Kureck](https://github.com/kureck), [Caio Assunção](https://www.linkedin.com/in/caioassuncao/) and [Henrique Gaspar](https://www.ntnu.edu/employees/henrique.gaspar) providing valuable feedbacks in the CV structure and text.
- [Paulo Oliveira](https://www.linkedin.com/in/oliveira-phc/) contributing with some discussion and ideas about the process to integrate the CI in this environment.
- [Leandro Penz](https://github.com/lpenz/cv) for the idea and inspiration in this build.
