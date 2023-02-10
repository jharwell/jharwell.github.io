---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Computational performance of SequenceL coding of the lattice Boltzmann method
  for multi-particle flow simulations
subtitle: ''
summary: ''
authors:
- Hakan Başağaoğlu
- Justin Blount
- Jarred Blount
- Bryant Nelson
- Sauro Succi
- Phil M. Westhart
- John R. Harwell
tags:
- Computational methods in fluid dynamics
- Hydrodynamics
- Lattice-Boltzmann
- SequenceL
categories: []
date: '2017-01-01'
lastmod: 2023-02-10T14:13:23-06:00
featured: false
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
projects: []
publishDate: '2023-02-10T20:55:19.662266Z'
publication_types:
- '2'
abstract: This paper reports, for the first time, the computational performance of
  SequenceL for mesoscale simulations of large numbers of particles in a microfluidic
  device via the lattice-Boltzmann method. The performance of SequenceL simulations
  was assessed against the optimized serial and parallelized (via OpenMP directives)
  FORTRAN90 simulations. At present, OpenMP directives were not included in inter-particle
  and particle–wall repulsive (steric) interaction calculations due to difficulties
  that arose from inter-iteration dependencies between consecutive iterations of the
  do-loops. SequenceL simulations, on the other hand, relied on built-in automatic
  parallelism. Under these conditions, numerical simulations revealed that the parallelized
  FORTRAN90 outran the performance of SequenceL by a factor of 2.5 or more when the
  number of particles was 100 or less. SequenceL, however, outran the performance
  of the parallelized FORTRAN90 by a factor of 1.3 when the number of particles was
  300. Our results show that when the number of particles increased by 30-fold, the
  computational time of SequenceL simulations increased linearly by a factor of 1.5,
  as compared to a 3.2-fold increase in serial and a 7.7-fold increase in parallelized
  FORTRAN90 simulations. Considering SequenceL's efficient built-in parallelism that
  led to a relatively small increase in computational time with increased number of
  particles, it could be a promising programming language for computationally-efficient
  mesoscale simulations of large numbers of particles in microfluidic experiments.
publication: '*Computer Physics Communications*'
---
