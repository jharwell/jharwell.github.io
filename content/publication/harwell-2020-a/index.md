---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Demystifying Emergent Intelligence And Its Effect On Performance In Large Robot
  Swarms
subtitle: ''
summary: ''
authors:
- John Harwell
- London Lowmanstone
- Maria Gini

tags:
- task_allocation
- matroids
- graph_theory

categories: []
date: '2020-05-01'
lastmod: 2021-01-07T11:08:34-06:00
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
projects: ['fordyca']
publishDate: '2021-01-07T17:08:34.544705Z'
publication_types:
- '2'
abstract: 'We investigate the emergence of swarm intelligence using task allo-
cation in large robot swarms. First, we compare task decomposition
graphs of different levels of richness and measure the emergent
intelligence arising from self-organized task allocation by deriving
STOCH-N1, a stochastic allocation algorithm which contextualizes
per-robot task allocation decisions based on a previous task’s neigh-
borhood within the graph. The results are compared to other state
of the art algorithms. Second, we derive MAT-OPT: a greedy algo-
rithm that optimally solves the swarm task allocation problem by
representing the swarm’s task allocation space as a matroid under
some restrictive assumptions. We compare the MAT-OPT alloca-
tion method, which disregards task dependencies, with STOCH-N1,
which emphasizes collective learning of graph structure (including
dependencies). Results from an object gathering task show that
swarm emergent intelligence (1) is sensitive to the richness of task
decomposition graphs (2) is positively correlated with performance,
(3) arises out of learning and exploitation of graph connectivity and
structure, rather than graph content.'
publication: '*Autonomous Agents and Multi-Agent Systems (AAMAS)*'
links:
- name: 'PDF'
  url: http://ifaamas.org/Proceedings/aamas2020/pdfs/p474.pdf
---
