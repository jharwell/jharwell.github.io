---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Improved Swarm Engineering: Aligning Intuition and Analysis'
subtitle: ''
summary: ''
authors:
- John Harwell
- Maria Gini
tags:
- Swarm Engineering
- Queueing Theory
- Foraging

categories: []
date: '2021-01-01'
lastmod: 2021-01-07T11:08:35-06:00
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
projects: [fordyca]
publishDate: '2023-02-10T20:55:19.021610Z'
publication_types:
- '3'
abstract: 'We present a set of metrics intended to supplement designer intuitions
  when designing swarm-robotic systems to solve variants of object gathering problems,
  increase accuracy in extrapolating swarm behavior from algorithmic descriptions
  and small test experiments, and lead to faster and less costly design cycles. We
  build on previous works studying self-organizing behaviors in autonomous systems
  to derive a metric for swarm emergent self-organization. We utilize techniques from
  high performance computing, time series analysis, and queueing theory to derive
  metrics for swarm scalability, flexibility to changing external environments, and
  robustness to internal system stimuli such as sensor and actuator noise and robot
  failures. We demonstrate the utility of our metrics by analyzing four different
  control algorithms in two scenarios: an indoor warehouse object transport scenario
  with static objects and a spatially unconstrained outdoor search and rescue scenario
  with moving objects. In the spatially constrained warehouse scenario, efficient
  use of space is key to success so algorithms that use mechanisms for traffic regulation
  and congestion reduction are the most appropriate.  In the search and rescue scenario,
  the same will happen with algorithms which can cope well with object motion through
  dynamic task allocation and randomized search trajectories. We show that our intuitions
  about comparative algorithm performance are well supported by the quantitative results
  obtained using our metrics, and that our metrics can be synergistically used together
  to predict collective behaviors based on previous results in some cases.'
publication: '*IEEE Transactions on Robotics*'
links:
- name: ArXiv
  url: https://arxiv.org/abs/2012.04144
  icon: arxiv
  icon_pack: ai
---
