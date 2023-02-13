---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Supplementary Material for \"An Empirical Characterization of the Limits of Poisson-based
Models of Swarm Behaviors in Common Scenarios\""
summary: ""

authors: []
tags:
- auro-2022

weight: 1
categories: []
date: 2022-11-26

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

This page provides supplementary material for the paper.

# Simulation Experiments

Below are some sample videos from experiments which were performed to help give
intuition on what the different block distributions looked like and the
experimental parameters. The number of robots used in each corresponding
(SS,DS,RN,PL) experiment below is the same, but the _density_ is different. In
the first set, the shown density is the maximum tested, 0.1. In the second set,
the density is a constant 0.01. Experiments are sped up by a factory of 10.

## Small Swarm Size, Variable Swarm Density

- Single Source (left), Dual Source (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-SS.16x8x2+population_variable_density.1p0.10p0.C10.mp4" width=50px >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-DS.16x8x2+population_variable_density.1p0.10p0.C10.mp4" width=50px >}}

- Random (left), Power Law (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-RN.16x16x2+population_variable_density.1p0.10p0.C10.mp4" width=50px >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-PL.16x16x2+population_variable_density.1p0.10p0.C10.mp4" width=50px >}}

## Small Swarm Size, Constant Swarm Density

- Single Source (left), Dual Source (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-SS.16x8x2+population_constant_density.1p0.I4.C16.mp4" width=50px >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-DS.16x8x2+population_constant_density.1p0.I4.C16.mp4" width=50px >}}

- Random (left), Power Law (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-RN.8x8x2+population_constant_density.1p0.I4.C16.mp4" width=50px >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-PL.8x8x2+population_constant_density.1p0.I4.C16.mp4" width=50px >}}

# Real-Robot Experiments

Below is a video of one of the experimental runs of the the real-robot
experiments:

{{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/real-robots.mp4" width=50px >}}
