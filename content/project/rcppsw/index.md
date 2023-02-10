---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "RCPPSW"
summary: "Reusable C++ SoftWare"
authors: []
tags:
- C++
- Active

weight: 2

categories: []
#date: 2021-01-07

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
  url: https://github.com/jharwell/rcppsw.git
  icon_pack: fab
  icon: github

- url: https://swarm-robotics-rcppsw.readthedocs.io/en/latest
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
This is a collection of various useful algorithms/data structures/etc. that I
have found useful for multi-agent robots research, and that do not currently
exist in Boost, or that build on what boost provides. Includes such things as:

- Event reporting framework, built on top of Log4cxx.

- Logical task hierarchy, including executives capable of executing a task
  decomposition graph.

- Data structures involved, such as 2D/3D grid graphs,
  multiprocessing/multithreading queues/vectors, type maps.

- Some reusable named type definitions.

- Implementation of various design patterns:

    - Polled FSM, Hierarchical FSM

    - decorator

    - visitor

    - factory (releasing/sharing variants)

    - prototype

    - singleton

    - PIMPL

- Components that DO exist elsewhere, but I found their implementations somewhat
  hard to follow/poorly documented, and it was easier to roll my own.

- Control theoretic bits such as PID loops

- Miscellaneous other things as kmeans clustering,
  multithreading/multiprocessing management tools.
