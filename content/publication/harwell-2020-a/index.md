---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Demystifying Emergent Intelligence and Its Effect on Performance In Large Robot
  Swarms
subtitle: ''
summary: ''
authors:
- John Harwell
- London Lowmanstone
- Maria Gini
tags:
- Task Allocation
- Foraging
- Matroids

categories: []
date: '2020-01-01'
lastmod: 2021-01-07T11:08:34-06:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [fordyca]
publishDate: '2021-10-13T19:10:52.574333Z'
publication_types:
- '1'
abstract: "We investigate the emergence of swarm intelligence using task allocation\
  \ in large robot swarms. First, we compare task decomposition graphs of different\
  \ levels of richness and measure the emergent intelligence arising from self-organized\
  \ task allocation by deriving STOCH-N1, a stochastic allocation algorithm which\
  \ contextualizes per-robot task allocation decisions based on a previous task's\
  \ neighborhood within the graph. The results are compared to other state of the\
  \ art algorithms. Second, we derive MAT-OPT: a greedy algorithm that optimally solves\
  \ the swarm task allocation problem by representing the swarm's task allocation\
  \ space as a matroid under some restrictive assumptions. We compare the MAT-OPT\
  \ allocation method, which disregards task dependencies, with STOCH-N1, which emphasizes\
  \ collective learning of graph structure (including dependencies). Results from\
  \ an object gathering task show that swarm emergent intelligence (1) is sensitive\
  \ to the richness of task decomposition graphs (2) is positively correlated with\
  \ performance, (3) arises out of learning and exploitation of graph connectivity\
  \ and structure, rather than graph content."
publication: '*Proceedings of the 19th International Conference on Autonomous Agents
  and MultiAgent Systems*'
links:
- name: PDF
  url: http://ifaamas.org/Proceedings/aamas2020/pdfs/p474.pdf
---
