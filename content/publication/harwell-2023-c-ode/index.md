---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Characterizing The Limits of Linear Modeling of Non-Linear Swarm Behaviors
subtitle: ''
summary: ''
authors:
- John Harwell
- Angel Sylvester
- Maria Gini
tags:
- Swarm Engineering
- ODE Modeling
- Foraging
- FORDYCA

categories: []
date: '2023-07-23'
lastmod: 2021-10-26T08:15:38-05:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
- fordyca

links:
- name: PDF
  url: https://link.springer.com/article/10.1007/s10514-023-10121-9

publication_types:
- '2'
abstract: 'There is a large class of real-world problems, such as warehouse transport, at different scales, swarm densities, etc., that can be characterized as Central Place Foraging Problems (CPFPs). We contribute to swarm engineering by designing an Ordinary Differential Equation (ODE) model that strives to capture the underlying behavioral dynamics of the CPFP in these application areas. Our simulation results show that a hybrid ODE modeling approach combining analytic parameter calculations and post-hoc (i.e., after running experiments) parameter fitting can be just as effective as a purely post-hoc approach to computing parameters via simulations, while requiring less tuning and iterative refinement. This makes it easier to design systems with provable bounds on behavior. Additionally, the resulting model parameters are more understandable because their values can be traced back to problem features, such as system size, robot control algorithm, etc. Finally, we perform real-robot experiments to further understand the limits of our model from an engineering standpoint.'
publication: 'Autonomous Robots'


publishDate: '2023-07-23T20:55:18.875058Z'
---
