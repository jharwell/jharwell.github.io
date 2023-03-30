---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "PARADYN"
summary: "Parallel Dynamic HPC Optimizer"
authors: []
tags:
- C++
- HPC
- Research
- Genetic algorithms
- Inactive

weight: 0
categories: []
date: 2016-04-01

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

While employed at SwRI in San Antonio, TX, I developed a parallel, dynamic
optimization engine driven by a genetic algorithm for the purposes of optimizing
the performance of computationally intensive simulations/analyses at
runtime. Compilers are excellent at performing static analysis to deliver the
most optimize code possible based on user hints and/or profiling
results. However, what if the computational characteristics of a
simulation/analysis change dramatical as the simulation runs? Then, any sort of
compile-time optimization at the beginning may well be for naught. Enter
PARADYN, a distributed optimizer targeted at heterogeneous clusters. PARADYN
would:

- Maintain a population of the best formulations of a code base from a
  computational optimization standpoint, and run them all simultaneously on the
  cluster.

- Monitor the per-timestep execution time of all candidate solutions,
  speculatively executing the ones that maintained high performance, and culling
  the poorly performing ones and replacing the others with new solutions
  obtained from the genetic algorithm
