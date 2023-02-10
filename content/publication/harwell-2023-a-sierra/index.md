---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'SIERRA: A Modular Framework for Accelerating Research and Improving Reproducibility'
subtitle: ''
summary: ''
authors:
- John Harwell
- Maria Gini

tags:
- Research Automation
- Robotics
- FORDYCA
- PRISM
- Reusability
- Artficial Intelligence
- Reproducibility

categories: []
date: '2023-01-01'
lastmod: 2023-02-10T14:13:23-06:00
featured: true
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
  name: 'Docs'

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
- sierra

publication_types:
- '1'
abstract: "We present SIERRA, a novel framework for accelerating development and
  improving reproducibility of results in robotics research. SIERRA accelerates
  research by automating the process of generating experiments from queries over
  independent variables(s), executing experiments, and processing the results to
  generate deliverables such as graphs and videos. It shifts the paradigm for
  testing hypotheses from procedural ('Do these steps to answer the query') to
  declarative ('Here is the query to test---GO!'), reducing the burden on
  researchers. It employs a modular architecture enabling easy customization and
  extension for the needs of individual researchers, thereby eliminating manual
  configuration and processing via throw-away scripts.  SIERRA improves
  reproducibility of research by providing automation independent of the
  execution environment (HPC hardware, real robots, etc.) and targeted platform
  (simulator, real robots, etc.). This enables exact experiment replication, up
  to the limit of the execution environment and platform, as well as making it
  easy for researchers to test hypotheses in different computational
  environments. Though SIERRA is targeted at robotics research, its design makes
  it extendable to other fields."
publication: ''
links:
- name: PDF
  url: https://ieeexplore.ieee.org/document/XXXX
---
