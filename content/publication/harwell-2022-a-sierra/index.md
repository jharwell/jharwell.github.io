---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'SIERRA: A Modular Framework for Research Automation'
subtitle: ''
summary: ''
authors:
- John Harwell
- London Lowmanstone
- Maria Gini
tags:
- simulation
- real robots
- research automation
- scientific method
categories: []
date: '2022-01-01'
lastmod: 2022-05-31T19:49:33-06:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

links:
- name: Github
  url: https://github.com/jharwell/sierra.git
  icon_pack: fab
  icon: github

- url: https://sierra.readthedocs.io/en/master
  icon_pack: fa
  icon: book
  name: Docs

- name: PDF
  url: https://ifaamas.org/Proceedings/aamas2022/pdfs/p1905.pdf

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
- sierra

publishDate: '2023-02-10T20:55:18.741847Z'
publication_types:
- '1'
abstract: Modern intelligent systems researchers form hypotheses about system behavior,
  and then run experiments using one or more independent variables to test their hypotheses.
  We present SIERRA, a novel framework structured around that idea for accelerating
  research developments and improving reproducibility of results. SIERRA makes it
  easy to quickly specify the independent variable(s) for an experiment, generate
  experimental inputs, automatically run the experiment, and process the results to
  generate deliverables such as graphs and videos. SIERRA provides reproducible automation
  independent of the execution environment (HPC hardware, real robots, etc.) and targeted
  platform (arbitrary simulator or real robots), enabling exact experiment replication
  (up to the limit of the execution environment and platform). It employs a deeply
  modular approach that allows easy customization and extension of automation for
  the needs of individual researchers, thereby eliminating manual experiment configuration
  and result processing via throw-away scripts.

publication: "*Proc. Int'l Conf. on Autonomous Agents and Multiagent Systems (AAMAS)*"
---
