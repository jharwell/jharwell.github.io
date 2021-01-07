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

In this project, I investigate the following questions:

- Is it possible for a swarm of intelligent, autonomous robots engaged in a
foraging task (i.e. collecting blocks and bringing them to a central location)
to dynamically choose the location of the cache(s) (temporary pickup/drop sites)
in the arena in an efficient manner to improve overall efficiency?

- Can the robots be made to allocate themselves to the various sub-tasks
involved in transporting a block from its original location to the central
collection location such that throughput is maximized?

- Given a rich set of interdependent tasks specifying various parts of an
overall foraging task, what does the swarm collectively learn as foraging
progresses?

Previous work in this space has investigated the maximization of throughput, but
never in the context of dynamic cache placement as well.
