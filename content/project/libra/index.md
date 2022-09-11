---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "LIBRA"
summary: "LuIgi Build Reusable Automation"
authors: []
tags:
- C
- C++
- Automation
- Active

weight: 1

categories: []
#date: 2021-01-07T13:18:40-06:00

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
  url: https://github.com/jharwell/libra.git
  icon_pack: fab
  icon: github

- url: https://libra2.readthedocs.io/en/master
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

Reusable build automation in the spirit of the world's second most successful
plumber.

This project provides 100% reusable `cmake` scaffolding that can be used for
nested/flat C/C++ projects (even mixing the two), and provides resuable build
"plumbing" that can be transferred without modification between projects. I
created this project because:

- No existing C/C++ build system supported automatic file discovery like
  `make`.

- No existing C/C++ build system provided 100% reusability across projects
  (assuming some conventions for file naming, directory layout, etc.). I found
  myself frequently copying and pasting `CmakeLists.txt` (or whatever the tol's
  configuration was )between projects, as I added and when I find a new flag I
  want to add, or a new static analysis checker, etc., I would have to go and
  add it to EVERY project.

- No existing C/C++ build systems supported doing things like running one or
  more static analyzers on a repository, formatting the repository, building and
  running tests, etc. Using `make check`, `make format`, or `make tests`, or
  other simple cmdline syntax.
