# NLIP: Natural Language and Information Processing Lab

This is repository for [NLIP](https://nlip-lab.github.io/). We use Jekyll to run our Github page. We are welcome for other people to contribute to our site not just lab members. Feel free to fork and pull-request!

[![CI](https://github.com/nlip-lab/nlip/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://github.com/devendra/myproject/actions)
[![License](https://img.shields.io/github/license/nlip-lab/nlip)](LICENSE)
![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue?logo=github)
![Jekyll](https://img.shields.io/badge/Built%20with-Jekyll-blueviolet?logo=jekyll)
[![Last Commit](https://img.shields.io/github/last-commit/nlip-lab/nlip)](https://github.com/nlip-lab/nlip/commits/main)
[![GitHub Stars](https://img.shields.io/github/stars/nlip-lab/nlip?style=social)](https://github.com/nlip-lab/nlip/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/nlip-lab/nlip?style=social)](https://github.com/nlip-lab/nlip/forks)
[![Top Lang](https://img.shields.io/github/languages/top/nlip-lab/nlip)]()
[![Contributors](https://img.shields.io/github/contributors/nlip-lab/nlip)]()
<!-- [![GitHub Issues](https://img.shields.io/github/issues/nlip-lab/nlip)](https://github.com/nlip-lab/nlip/issues) -->


## Run the page locally using Jekyll

To run locally, follow instruction [here](https://jekyllrb.com/) to install Jekyll then run `jekyll serve` to see in `localhost:4000`. Here is a brief install guidelines.

```bash
sudo gem install jekyll
sudo gem install rouge
# jekyll serve
bundle exec jekyll serve
```

## Editing the lab website

Below, we explain how to edit the lab webpage

### Add posts

It's very easy to add post. All the posts are located in `_posts` folder. It arrangement is based on
date. Each post can be written in markdown format. You just have to state headers before writing: `title`, `description` and `categories`. `description` will be shown when you share on social media like Facebook or twitter. See the following headers:

``` markdown
---
title: Summer School in Computational Sensory-Motor Neuroscience (CoSMo)
description: all links to CoSMo summer school in computational neuroscience materials
categories: scientists
---
```

We have 4 categories: `scientists`, `students`, `discussion`, `blog` you can choose and this will be rendered to different location.

### How to add posts

- **Directly edit on Github**, you can simply go to `_posts` and click `New file` then put some markdown file e.g. `2016-02-03-post-name.md` and start writing blog post. Github also allows you to preview it so it's nice for people who don't want to clone the repo. 

- **Clone the repository**, kind of the same as directly add post on Github. You just have to clone the repository. Then add new post file, commit and push to the repo.

The changes will take approximately half a minute to render. You can see the new posts or changes on [kordinglab.com](http://kordinglab.github.io/)!

### Add yourself

You can add yourself to the page in `_people` folder just create file name `<firstname>_<lastname>.md` in the folder. We require few line of header before you start writing your own page. See the following for the header

``` markdown
---
name: Eva Dyer
position: postdoc
avatar: eva.jpg
twitter:
joined: 2014
---
```

If you don't have information, just leave it blank. The avatar will bring photo from `images/people` folder and display it on people page. 
For lab position, you can choose position from 4 classes including `postdoc`, `gradstudent`, `visiting`, `others` (so called Honorary members). Position will put you into section that you choose.

### Add new publications

All publications from the lab are located in `publications.md`. Please upload new publication on your own!

### Add news

All news presented in the front page by editing `_data/news.yml`. There are some symbol that cannot be used directly e.g. `:`, be careful
