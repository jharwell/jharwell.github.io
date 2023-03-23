---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Kernels Love Kernel Injection (KLOKI)"
summary: "Kernels LOve Kernel fault Injection"
authors: []
tags:
- Linux kernel programming
- C
- Inactive

weight: 0
categories: []
date: 2017-08-01


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
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

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

# Overview

I worked as an intern at Cray, Inc. Summer 2017, doing work on the DataWarp
project. Of all the kernel modules I created, this one was the most interesting,
as it allowed you inject faults into a live running kernel from the command
line, with only a single compile-time macro statement placed at the start of
every function you want to be able to inject one or more faults into. Not just
trivial faults either (i.e. returning a bad value), but delays,
probabilistic injections, and more.

{{< figure library="true" src="kloki-datawarp.png" caption="Datawarp architecture." >}}
