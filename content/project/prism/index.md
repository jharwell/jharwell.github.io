---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "PRISM"
summary: "Phased Robotic ISomorphic graph Manipulation"

authors: []
tags:
- Research
- Construction
- Graph Theory
- C++
- ARGoS
- Active

weight: 1
categories: []
date: 2021-01-07T12:07:58-06:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
links:
- name: Github
  url: https://github.com/jharwell/prism.git
  icon_pack: fab
  icon: github

- url: https://swarm-robotics-prism.readthedocs.io/en/latest
  icon_pack: fa
  icon: book
  name: 'Docs'

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

In this project, I have investigated the following research questions, in the
context of the Parallel Bricklayer Problem (i.e., how to coordinate the efforts
of multiple independent agents contributing to building a structure to avoid
deadlocks and maxmimize efficiency):

- Can we model how a large swarm of robots interacts with and manipulates its
  environment in a general way using graph theory? Can we derive a set of
  properties that graphs representing structures which can be constructed or
  deconstructed by swarms such that from a valid starting graph state the swarm
  is provably guaranteed to reach a final graph state, even though the sequence
  of actions to reach the final state is not specified in advance?

This project relies heavily on [SIERRA](project/sierra) for running
experiments and processing results.
