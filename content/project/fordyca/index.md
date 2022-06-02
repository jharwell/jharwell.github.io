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
- ROS
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

In this project, I have investigated the following research questions, in the
context of the Foraging Problem (i.e., collecting blocks and bringing them to a
central location):

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

- Given swarms are typically made of simple agents, how do they collectively act
  intelligently? I investigate the effect of having swarms allocate tasks from a
  relational graph on the overall level of emergent intelligence. Short answer:
  task allocating swarms learn task _relationships_ (as opposed to task) costs;
  these effects are more visible on more complex task graphs with more tasks and
  dependencies between tasks. Long answer: [AAMAS2020]({{<ref
  "publication/harwell-2020-a-demystify">}}).

- Can a Poisson-based model of collective swarm behavior be used to model the
  behavior of swarms in which robot behaviors are not Poisson distributed? If so
  , under what conditions? Short answer: _yes_, IF you have a general
  first-principle model then can do this in a variety of foraging
  scenarios for both large and small swarms. Long answer: [AURO2022]({{<ref
  "publication/harwell-2022-b-ODE">}}).

This project relies heavily on [SIERRA]({{<ref "project/sierra">}}) for running
experiments and processing results.
