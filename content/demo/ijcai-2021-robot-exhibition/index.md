---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Automated Swarm Robotic Foraging Algorithm Comparison"
summary: "Robot Exhibition: ARGoS videos SIERRA demonstration"

authors: []
tags:
- ijcai-2021

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

# Overview

This page contains:

- Pre-recorded videos visually demonstrating the foraging algorithms from some
  of my recent papers. In a foraging task, robots gather objects distributed in
  an a 3D environment in various ways under different constraints and
  environmental conditions.


  - [IJCAI 2019]({{<ref "publication/harwell-2019-a" >}})
  - [AAMAS 2020]({{<ref "publication/harwell-2020-a" >}})

- A "live" recorded video of using the [SIERRA]({{<ref "project/sierra" >}})
  framework to automate generating experiment inputs, running experiments, and
  processing results to generate camera-ready graphs and/or videos.

## Environment: ARGoS simulator
[ARGoS](http://www.argos-sim.info/index.php) is a very powerful simulator, and
is capable of simulating over 10,000 robots in near real-time (i.e., 1 second
simulated time = 1 second wall clock time). Here is an example of ARGoS
simulating a 16,000 robot CRW swarm, recorded on a conventional desktop.

{{< video library="true" class="aligncenter" src="RN-800x800.mp4" controls="no" width=50px >}}


## Algorithm Overview

- **Correlated Random Walk (CRW)**. Robots roam around performing a biased random
  walk where the difference between the angles between steps is drawn from
  Uniform(-$\theta$,$\theta$), where $\theta$ is the bias angle. Robots have no
  memory.

- **Decaying Pheromone Object (DPO)**. In DPO swarms, robots track seen objects
  using exponentially decaying pheromones, and determine the ``best'' object to
  acquire using derived information relevance.

- **STOCHM**. In STOCHM swarms, robots stochastically allocate tasks using the
  STOCH-N1 algorithm ([AAMAS 2020]({{<ref "publication/harwell-2020-a" >}})), a
  stochastic choice depending on the location of the most recently executed task
  within the graph of tasks available to each robot. They can self-allocate (1)
  the entire foraging task themselves (i.e., retrieving an object and bringing
  it to the nest), or (2) one of two subtasks of bringing an acquired object to
  a _static_ intermediate drop site (cache), or picking one up from a cache and
  bringing it to the nest. These three tasks form a _compound_ [task
  decomposition graph](#figure-task-decomposition-graph-in-foraging) (gold tasks
  only), in which a task can be decomposed into simpler tasks in exactly one
  way.

- **STOCHX**. In STOCHX swarms, robots can stochastically choose any of the
  tasks of the STOCHM algorithm (i.e.~exploit existing caches) to perform, but
  can also choose to perform tasks related to dynamically creating new caches as
  environmental conditions evolve. Robots perform task allocation, according to
  the STOCH-N1 algorithm ([AAMAS 2020]({{<ref "publication/harwell-2020-a"
  >}})). The available tasks form a _complex_ [task decomposition
  graph](#figure-task-decomposition-graph-in-foraging) (red+gold tasks), in
  which an overall task can be decomposed into smaller, simpler tasks in
  multiple ways.

{{< figure  src="tdgraph-foraging.png" title="Task decomposition graph in foraging" width="50%">}}

## Algorithm Recorded Videos

The below videos illustrate the performance of each of the above algorithms
visually. All videos were recorded with the [SIERRA]({{<ref "project/sierra">}})
framework.

## SIERRA Demonstration

In the below video, I show how to use SIERRA to quickly and efficiently run
ARGoS simulations to explore a given variable of interest ("batch criteria" in
SIERRA terminology), and to generate camera ready graphs and videos using it.
