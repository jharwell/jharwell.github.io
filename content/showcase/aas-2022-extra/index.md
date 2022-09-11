---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Supplementary Material for \"Making Better Design Decisions in Swarm
Engineering by Aligning Intuition with Analysis\""
summary: "
Presentation of visual and diagnostic videos for each of the foraging algorithms
evaluation in the paper.
"

authors: []
tags:
- aas-2022

weight: 1
categories: []
date: 2022-08-22T

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

# - url: https://github.com/jharwell/fordyca.git
#   icon_pack: fab
#   icon: github
#   name: 'FORDYCA GitHub'
#
# - url: https://jharwell-fordyca.readthedocs.io/en/latest
#   icon_pack: fa
#   icon: book
#   name: 'FORDYCA Docs'

slides: ""
toc: true
---


# Overview

This page provides supplementary material for the AAS paper. The foraging
algorithms shown on this page are:

- CRW
- DPO
- STOCHM
- STOCHX

See [AAMAS 2020]({{<ref "publication/harwell-2020-a-demystify" >}}),[IJCAI
2019]({{<ref "publication/harwell-2019-a-metrics" >}}) for technical
explanations of the algorithms.

All videos were recorded/generated using [SIERRA](project/sierra). All videos
are 5,000 seconds of simulated time long.

Blocks to be collected are represented as black squares,
and the nest is a light gray with yellow lights above it which robots use for
phototaxis. Caches are a dark gray (STOCHM, STOCHX only).

# ARGoS Visual Videos

Scenario 1 (small warehouse), 32x16 arena with 128 robots:

- CRW (left), DPO (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/crw/2021-tro-sc1_0_output.mp4" width=50px >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/dpo/2021-tro-sc1_0_output.mp4" width=50px >}}

- STOCHM (left), STOCHX (right)

  {{< video library="true" autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochm/2021-tro-sc1_0_output.mp4" width=50px >}}
  {{< video library="true" autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochx/2021-tro-sc1_0_output.mp4" width=50px >}}


# Diagnostic Videos

Scenario 1 (small warehouse), 32x16 arena with single source block distribution,
128 robots:

  - CRW: spatial searching distribution (left), spatial interference
    distribution (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/crw/block-acq-explore-locs2D.mp4" width=50px type="video/mp4">}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/crw/fsm-interference-locs2D.mp4"  width=50px >}}

  - DPO: spatial searching distribution (left), spatial interference
    distribution (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/dpo/block-acq-explore-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/dpo/fsm-interference-locs2D.mp4"  width=50px >}}

  - STOCHM: spatial searching distribution (left), spatial interference
    distribution (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochm/block-acq-explore-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochm/fsm-interference-locs2D.mp4"  width=50px >}}

  - STOCHX: spatial searching distribution (left), spatial interference
    distribution (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochx/block-acq-explore-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochx/fsm-interference-locs2D.mp4"  width=50px >}}

Scenario 1 (medium warehouse), 48x48 arena with random block distribution, 256
robots:

- CRW: spatial block pickup distribution (left), spatial occupancy distribution
    (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/crw/block-acq-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/crw/swarm-dist-pos2D.mp4"  width=50px >}}

- DPO: spatial block pickup distribution (left), spatial occupancy distribution
    (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/dpo/block-acq-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/dpo/swarm-dist-pos2D.mp4"  width=50px >}}

- STOCHM: spatial block pickup distribution (left), spatial occupancy distribution
    (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochm/block-acq-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochm/swarm-dist-pos2D.mp4"  width=50px >}}

- STOCHX: spatial block pickup distribution (left), spatial occupancy distribution
    (right):

    {{< video library="true" controls="yes" class="alignleft" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochx/block-acq-locs2D.mp4" width=50px >}}
    {{< video library="true" controls="yes" class="alignright" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/stochx/swarm-dist-pos2D.mp4"  width=50px >}}
