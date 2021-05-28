---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "FORDYCA"
summary: "FOraging Robots use DYnamic CAches"

authors: []
tags:
- research
- task_alloc
- dynamic_caches
- static_caches
- C++
- argos
- foraging
- active

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
  url: https://github.com/swarm-robotics/fordyca.git
  icon_pack: fab
  icon: github

- url: https://swarm-robotics-fordyca.readthedocs.io/en/latest
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

In this project, I have investigated the following questions:

- In environments not specifically designed to be amenable to using caches
  (temporal pickup/drop sites), such as flat, open spaces, can caches still be
  used to increase performance? Short answer: _yes_, long answer: [SIMPAR2018]({{<ref "publication/harwell-2018">}}).

- Can swarm scalability, emergent self-organization, flexibility, and robustness
  be quantitatively measured (as opposed to just observed) ? Short answer:
  _yes_, long answer: [IJCAI2019]({{<ref "publication/harwell-2019-a">}}),
  [TRO2021]({{<ref "publication/harwell-2020-c">}}).

- Is it possible for a swarm of intelligent, autonomous robots engaged in a
  foraging task (i.e. collecting blocks and bringing them to a central location)
  to dynamically choose the location of the cache(s) (temporary pickup/drop
  sites) in the arena in an efficient manner to improve overall efficiency?
  Short answer: _yes_, long answer: [AAMAS2020]({{<ref "publication/harwell-2020-a">}}).

- Is the richness of a set of interdependent tasks specifying various parts of
  an overall foraging task which robots can choose from correlated with
  intelligence ? That is, if you give a swarm of robots more ways
  to accomplish the same task, does the same demonstrate more emergent
  intelligence than if you only give it a few ways to accomplish the same task ?
  Short answer: _yes_, long answer: [AAMAS2020]({{<ref "publication/harwell-2020-a">}}).
