---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Supplementary Material for \"An Empirical Characterization of ODE Models of
  Swarm Behaviors in Common Foraging Scenarios\""
summary: ""

authors: []
tags:
- auro-2022
- Foraging
- ODE modeling
- Turtlebot3
- ARGoS

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
the density is a constant 0.01. Experiments are sped up by a factor of 10.

## Small Swarm Size, Variable Swarm Density

- Single Source (left), Dual Source (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-SS.16x8x2+population_variable_density.1p0.10p0.C10.mp4" >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-DS.16x8x2+population_variable_density.1p0.10p0.C10.mp4" >}}

- Random (left), Power Law (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-RN.16x16x2+population_variable_density.1p0.10p0.C10.mp4" >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-PL.16x16x2+population_variable_density.1p0.10p0.C10.mp4" >}}

## Small Swarm Size, Constant Swarm Density

- Single Source (left), Dual Source (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-SS.16x8x2+population_constant_density.1p0.I4.C16.mp4" >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-DS.16x8x2+population_constant_density.1p0.I4.C16.mp4" >}}

- Random (left), Power Law (right)

  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-RN.8x8x2+population_constant_density.1p0.I4.C16.mp4" >}}
  {{< video autoplay="true" loop="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/2022ode-PL.8x8x2+population_constant_density.1p0.I4.C16.mp4" >}}

# Real-Robot Experiments

We use "extended" TurtleBot3 burger robots some additional sensors added, shown
in the below video:

- Ultrasonic sensor  to detect blocks
- 4 Light sensors to provide localization with respect to a light source.

{{< youtube id="hl35EnIxUMc" >}}

In addition, static "arms" are added to help robots acquire blocks. The arms,
ultrasonic sensor (bottom center), and light sensors (front; back/left/right not
visible).

For the real robot experiments we perform 4 experimental runs of 5 minutes each
with 1-5 robots.  We use the single source (SS) block distribution and a bright
light source created with photography lights is used as the nest. Below are two
sample videos: a close up view of a run with 2 robots showing the foraging
process in detail, and a run with 5 robots showing the full arena.

{{< youtube id="wRNTMhwHA2M"  title="From IMG_5487.MOV" >}}
{{< youtube id="LKx9rfZgBTA" title="From MVI_4362-001.MP4" >}}

The purpose of these experiments was to show the feasibility of the methodology
across both the simulation and real robot domains. As such, because our
methodology assumes steady-state, we require that the number of blocks available
for robots to find is the same. Thus, we do not run experiments from their start
with N blocks until their are 0 blocks remaining. Instead, we run each
experiment for 5 minutes during which time the robots generally do not collect
enough blocks to appreciably diminish the overall number available, thus
modeling a "slice" of steady-state time where the number of blocks remains
approximately constant.

# Effect Of Assumptions On Robot Behavioral Distributions

In its simplest form, ODE modeling fundamentally assumes that the modeled
behaviors are steady-state (additional modeling techniques can be applied to
help model transient behaviors, as described in the paper). Further, when
modeling _foraging_ behaviors, spatially symmetric steady-state behavioral
distributions are more amenable to ODE modeling, because such distributions
result in robots experiencing events in a non-Poisson way much less frequently
because the spatial density is roughly uniform. This is why the random (RN)
block distribution is the easiest to model, and the power law (PL) distribution
is the most challenging.

The use of the nest in the corner vs. the center is the critical difference
between the assumptions used in the two models: one results in non-symmetric
spatial distributions more difficult to model with ODEs, and one results in
symmetric spatial distributions more amenable to ODE modeling.  The use of
finite vs. infinite blocks _also_ affects spatial distributions, but to a lesser
degree: robots still acquire blocks roughly the same fashion in both cases, as
can be seen below. However, the _rate_ of acquisition differs--an asymmetry in
time.

The below videos show the spatial distributions of different robot behaviors
under each set of assumptions. In each video, the X and Y axes shows the X and Y
extents of the arena, with the color showing the density of robots at a given
(x,y) location.

LEFT: Finite blocks, nest in corner (Lerman et al.)

RIGHT: Using infinite blocks, nest in center (our work)


## Searching robots (Where are robots when they are in the searching state?)


{{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/lerman/block-acq-explore-locs2D.mp4" >}}
{{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/us/block-acq-explore-locs2D.mp4" >}}

The nest in the corner results in a non-symmetric spatial distribution in steady state.

## Acquisition locations (Where do robots acquire blocks from?)
  {{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/lerman/block-acq-locs2D.mp4" >}}
  {{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/us/block-acq-locs2D.mp4" >}}


Notice that the distribution on the left is _much_ sparser, due to finite
blocks.

## Robot interference (Where are robots when they are experiencing interference?)

{{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/lerman/spatial-interference-locs2D.mp4" >}}
  {{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/us/spatial-interference-locs2D.mp4" >}}

The nest in the corner results in a non-symmetric spatial distribution in steady
state.


## Robot occupancy (Where are robots generally, regardless of what state they are in?)

{{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/lerman/spatial-dist-pos2D.mp4" >}}
{{< video controls="true" class="aligncenter" src="https://media.githubusercontent.com/media/jharwell/jharwell.github.io/master/assets/media/showcase/ode/us/spatial-dist-pos2D.mp4" >}}

The nest in the corner results in a non-symmetric spatial distribution in steady
state.
