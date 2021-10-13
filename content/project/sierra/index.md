---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "SIERRA"
summary: "Swarm InteElligence Reusable ARGoS Automation"
authors: []
tags:
- Research
- ARGoS
- Active

weight: 1

categories: []
#date: 2021-01-07T13:09:08-06:00

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
  url: https://github.com/swarm-robotics/sierra.git
  icon_pack: fab
  icon: github

- url: https://swarm-robotics-sierra.readthedocs.io/en/latest
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

Python framework for automating a common research pipeline in swarm
robotics. ARGoS driver. It is named thusly because it will save you a
LITERAL, (not figurative) mountain of work.

Automated pipeline currently contains:

1. Generating simulation inputs for experiments simulations to investigate some
   variable(s) of interest across some range(s) for arbitrary swarm sizes, robot
   controllers, and scenarios (exact capabalitities depend on the
   controller+support code you have written).

2. Running all simulations in parallel. Supports multiple HPC environments such
   as:

   - [SLURM](https://slurm.schedmd.com/documentation.html).
   - [Torque/MOAB](http://docs.adaptivecomputing.com/torque/5-0-1/help.htm#topics/torque/0-intro/torquewelcome.htm%3FTocPath%3DWelcome%7C_____0).
   - ADHOC (suitable for a miscellaneous collection of networked compute nodes
     for a research group).
   - Local machine (for testing).

3. Averaging simulation results to obtain confidence intervals on observed
   behavior.

4. Generating camera-ready outputs such as:

   - Graphs of simulation results
   - Videos of simulation execution, captured using ARGoS rendering facilities.
   - Videos built from captured simulation output .csv files.

5. Generating camera ready graphs comparing swarm behaviors within a single
   scenario and across multiple scenarios.

It has been used in many of my research projects:

-  [FORDYCA]({{<ref "project/fordyca">}}) 
-  [PRISM]({{<ref "project/prism">}}) 

and publications:

-  [IJCAI2019]({{<ref "publication/harwell-2019-a">}}) 
-  [AAMAS2020]({{<ref "publication/harwell-2020-a">}}) 
-  [TRO2021]({{<ref "publication/harwell-2020-c">}}) 


To get started, check out the [docs](https://swarm-robotics-sierra.readthedocs.io/en/latest).
