---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "FORDYCA"
summary: "FOraging Robots use DYnamic CAches"

authors: []
tags:
- Research
- Task Allocation
- C++
- ARGoS
- Foraging
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

In this project, I have investigated the following research questions, using
foraging task (i.e. collecting blocks and bringing them to a central location)
as a testbed:

- In environments not specifically designed to be amenable to using caches
  (temporal pickup/drop sites), such as flat, open spaces, can static caches
  (those at a predetermined location maintained by an outside process) still be
  used to increase performance? Short answer: _yes_, long answer:
  [SIMPAR2018]({{<ref "publication/harwell-2018-partitioning">}}).

- Swarms have many desirable properties, such as scalability, emergent
  self-organization, flexibility, and robustness--can these properties be
  quantitatively measured (as opposed to just observed) ? Short answer: _yes_,
  long answer: [IJCAI2019]({{<ref "publication/harwell-2019-a-metrics">}}),
  [TRO2021]({{<ref "publication/harwell-2021-a-metrics">}}).

- In environments not specifically designed to be amenable to using caches, can
  dynamic caches (those which are placed dynamically by robots, and can be
  created/depleted over time as conditions evolve) be used to improve overall
  efficiency?  Short answer: _yes_, long answer: [AAMAS2020]({{<ref
  "publication/harwell-2020-a-demystify">}}).

- Is the "connectedness" of a set of interdependent tasks (i.e., which tasks are
  dependencies for multiple other tasks) specifying various parts of an overall
  foraging task which robots can choose from correlated with intelligence ? That
  is, if you give a swarm of robots more ways to accomplish the same task (e.g.,
  the overall task, two halves of the overall task, four 1/4 chunks of the
  overall task, etc.), does the same demonstrate more emergent intelligence than
  if you only give it a few ways to accomplish the same task ?  Short answer:
  _yes_, long answer: [AAMAS2020]({{<ref "publication/harwell-2020-a-demystify">}}).

- Can swarms exhibiting emergent collective behaviors (which are inherently
  non-linear) be modeled using linear models, which are often much simpler and
  easier to understand that non-linear models of the same behavior? Short
  answer: _yes_, long answer [AURO2021]({{<ref
  "publication/harwell-2021-b-ODE">}}).

This project relies heavily on [SIERRA]({{<ref "project/sierra">}}) for running
experiments and processing results.
