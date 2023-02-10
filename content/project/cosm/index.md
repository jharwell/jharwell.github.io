---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "COSM"
summary: "COre SwarM"
authors: []
tags:
- C++
- ARGoS
- ROS
- Task Allocation
- Hardware Abstraction
- Platform Abstraction
- Active

weight: 1
categories: []
#date: 2021-01-07T16:19:31-06:00

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
  url: https://github.com/jharwell/cosm.git
  icon_pack: fab
  icon: github

- url: https://swarm-robotics-cosm.readthedocs.io/en/latest
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
Core Swarm (COSM) is a middleware-esque library providing:

- A Platform Abstraction Layer (PAL): A common API to different platforms
  (ARgoS, ROS, etc) which client applications can write to.

- A Hardware Abstraction Layer (HAL): A common API to different agent/robot
  types which client applications to write to.

- A collection of reusable algorithms and scaffolding to maximize reuse across
  multi-agent system projects and reduce development time. High level summaries
  of COSM’s main modules providing reusable (but not necessarily generic
  functionality in MAS projects) are below; for full details see the API.

    - Artificial potential fields for navigation and flocking: cosm::apf2D.

    - Platform Abstraction Layer (PAL): cosm::pal.

    - Hardware Abstraction Layer (HAL): cosm::hal.

    - Task allocation. Various methods from the swarm robotics literature, most
      of which do not require communication.

    - Flocking. Also metrics and collectors. cosm::flocking and
      cosm::spatial::strategy::flocking.

    - Common agent subsystems: cosm::subsystem

      - Sensing and Actuation (SAA)

      - Perception

    - Foraging: block distribution, block motion, injection of perfect
      information about blocks and caches. Metrics and
      collectors. cosm::foraging.

    - General kinematics definitions for interfacing with ROS and other
      platforms: cosm::kin.

    - Convergence measurements of different types; metrics and
      collectors. cosm::convergence.

    - Injection of environmental and population dynamics; metrics and
      collectors. cosm::tv.

    - Simple management of arena state via grid: cosm::arena.
