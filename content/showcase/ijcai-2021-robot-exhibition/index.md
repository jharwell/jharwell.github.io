---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Swarm Robotic Experimental Pipeline Automation: Foraging Algorithm Comparison"
summary: "
A demonstration of automated comparison between foraging algorithms
using the ARGoS simulator and the SIERRA framework.
"

authors: []
tags:
- ijcai-2021

weight: 1
categories: []
date: 2021-05-19T

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

# - url: https://github.com/swarm-robotics/fordyca.git
#   icon_pack: fab
#   icon: github
#   name: 'FORDYCA GitHub'
#
# - url: https://swarm-robotics-fordyca.readthedocs.io/en/latest
#   icon_pack: fa
#   icon: book
#   name: 'FORDYCA Docs'

slides: ""
toc: true
---

# Summary

This page contains:

- Pre-recorded videos visually demonstrating the foraging algorithms from some
  of my recent papers: [IJCAI 2019]({{<ref "publication/harwell-2019-a-metrics"
  >}}), [AAMAS 2020]({{<ref "publication/harwell-2020-a-demystify" >}}). All
  foraging algorithms are from the open source [FORDYCA]({{<ref
  "project/fordyca" >}}) project. In a foraging task, robots gather objects
  distributed in a 3D environment in various ways under different constraints
  and environmental conditions.

- A "live" recorded video demonstrating cmdline usage of the awesome
  [SIERRA]({{<ref "project/sierra">}}) framework to automate generating
  experiment inputs, running experiments, and processing results to generate
  camera-ready graphs and/or videos.

# Environment: ARGoS simulator
[ARGoS](http://www.argos-sim.info/index.php) is a very powerful robotics
simulator, and is capable of simulating over 10,000 robots in near real-time
(i.e., 1 second simulated time = 1 second wall clock time). Here is an example
of ARGoS simulating a 16,000 robot CRW swarm, recorded on a conventional
desktop:

{{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/RN-800x800.mp4" width=50px >}}

# Algorithms

## STOCH-N1 summary

For the STOCHM and STOCHX algorithms presented below, robots stochastically
allocate tasks using the STOCH-N1 algorithm ([AAMAS 2020]({{<ref
"publication/harwell-2020-a-demystify" >}})), a stochastic choice depending on
the location of the most recently executed task within the graph of tasks
available to each robot (a neighborhood of size 1). For example, if the
available tasks form a [task decomposition
graph](#figure-task-decomposition-graph-in-foraging) in which the overall
foraging task can be broken down (decomposed) into smaller subtasks, and a
STOCHM robot has most recently executed the _Collector_ task, then the robot
could choose the Generalist, Harvester, or Collector tasks next.

{{< figure  library="true" src="tdgraph-foraging.png" title="Task decomposition graph in foraging" width="50%">}}


The below videos illustrate the performance of each of the above algorithms
visually. All videos were recorded with [SIERRA]({{<ref "project/sierra">}})
using only the `--platform-rendering` option. Objects to be collected are
represented as black squares, and the nest is a light gray with yellow lights
above it which robots use for phototaxis. As soon as an object is dropped in the
nest, it is re-distributed in the arena so that the overall number of objects
available for robots to find remains approximately constant.

## Correlated Random Walk (CRW) algorithm

Robots roam around performing a biased random walk where the difference between
the angles between steps is drawn from Uniform(-$\theta$,$\theta$), where
$\theta$ is the bias angle. Robots have no memory.

{{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/crw/2021-tro-sc1_0_output.mp4" width=50px >}}


## Decaying Pheromone Object (DPO) algorithm

Robots track seen objects using exponentially decaying pheromones, and determine
the "best" object to acquire using derived information relevance.

{{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/dpo/2021-tro-sc1_0_output.mp4" width=50px >}}

Notice how the robots move much more purposefully and constantly between the
source and the nest--this is due to robots remembering objects they have seen
using decaying pheromones.


## STOCHM algorithm

Robots stochastically allocate tasks from the _compound_ [task decomposition
graph](#figure-task-decomposition-graph-in-foraging) (gold tasks only), in which
the foraging task can be decomposed into simpler tasks in exactly one way, using
the STOCH-N1 algorithm. Concretely, this means they can self-allocate the
following tasks:

- _Generalist_ - The entire foraging task (i.e., retrieving an object and
  bringing it to the nest).

- _Harvester_ - Finding an object and bringing it to an intermediate drop site
  (cache) and dropping it. These sites are _static_ from the perspective of the
  swarm, and maintained by an outside process.

- _Collector_ - Picking up an object from a static cache and bringing it to
  the nest.

The cache is the dark gray square in the center of the arena in this
simulation. Notice how some robots choose to exploit the existing cache by
picking up from/dropping in it, and some choose to ignore it, with the
distribution evolving over time.

{{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/stochm/2021-tro-sc1_0_output.mp4" width=50px >}}


## STOCHX algorithm

Robots stochastically allocate tasks from the _complex_ [task decomposition
graph](#figure-task-decomposition-graph-in-foraging) (red+gold tasks), in which
the overall foraging task can be decomposed into smaller, simpler tasks in
multiple ways, using the STOCH-N1 algorithm. The can choose the 3 tasks
available to STOCHM robots, which relate to exploiting existing caches, but can
also choose gold tasks, which relate to dynamically creating new caches as
environmental conditions evolve:

 - _Cache Starter_ - Finding an object and bringing it to a "good" intermediate
   location between where they picked it up from and the nest, and dropping it
   to start a new cache.

 - _Cache Finisher_ - Finding an object and bringing it to where another robot
   has previously dropped an object to start a cache and drop it to create a new
   cache.

 - _Cache Transferer_ - Pickup an object from one cache and transfer it to
   another cache closer to the nest.

 - _Cache Collector_ - Pickup an object from a cache and bring it to the nest
   (essentially the same as the Collector task).

 {{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/stochx/2021-tro-sc1_0_output.mp4" width=50px >}}

Notice in this video that caches are be created, depleted, and re-created
ynamically as simulation progresses.


# SIERRA Demonstration Videos

In these videos, I demonstrate some of the capabilities of [SIERRA]({{<ref
"project/sierra">}}). For all videos, the simulation timescales and swarm sizes
simulated are small to keep videos short, but can be arbitrarily long and/or
large.

## Exploring simulation variables

- Exploring the behavior of the CRW algorithm across swarm sizes 1,2,4,8 by
  passing `--batch-criteria population_size.Log8`; the specification for how
  many sizes to test with is not hardcoded in SIERRA, but parsed at runtime, so
  it can be anything: I could have done `Log512`, `Log256`, `Linear1000`, or any
  other instance of a size specification SIERRA supports.

  <details>
    <summary>Full SIERRA command</summary>

    ```
    sierra-cli \
    --sierra-root=$HOME/exp\
    --template-input-file=$HOME/git/sierra/templates/2021-ijcai-demo.argos \
    --project=fordyca\
    --physics-n-engines=1\
    --time-setup=time_setup.T1000\
    --batch-criteria population_size.Log8\
    --models-disable\
    --no-verify-results
    ```

  </details>

- Putting box confidence on some of the generated graphs by re-running
  SIERA stages 3 and 4 by adding `--pipeline 3 4 --dist-stats=conf95` to my
  SIERRA command.

  <details>
    <summary>Updated SIERRA command</summary>

    ```
    sierra-cli \
    --sierra-root=$HOME/exp\
    --template-input-file=$HOME/git/sierra/templates/2021-ijcai-demo.argos \
    --project=fordyca\
    --physics-n-engines=1\
    --time-setup=time_setup.T1000\
    --batch-criteria population_size.Log8\
    --models-disable\
    --no-verify-results\
    --pipeline 3 4\
    --dist-stats=conf95
    ```

  </details>

- Running additional simulations after (for example) I realize the confidence
  intervals on the graphs are not tight enough, and changing my mind and and
  putting box and whisker plots on the graphs instead of confidence intervals,
  by adding `--exec-resume --dist-stats=bw --n-sims=16` to my SIERRA
  command. Note how SIERRA does not re-run simulations which have already
  finished!

  <details>
    <summary>Updated SIERRA command</summary>

    ```
    sierra-cli \
    --sierra-root=$HOME/exp\
    --template-input-file=$HOME/git/sierra/templates/2021-ijcai-demo.argos \
    --project=fordyca\
    --physics-n-engines=1\
    --time-setup=time_setup.T1000\
    --batch-criteria population_size.Log8\
    --models-disable\
    --no-verify-results\
    --exec-resume\
    --dist-stats=bw\
    --n-sims=16
    ```

  </details>

{{< video library="true" class="aligncenter" src="showcase/2021-ijcai-sierra-demo.mp4" controls="yes" >}}

## Generating videos from simulations .csv files
In the below videos, I show examples of rendering two dimensional .csv files
from simulation outputs into images which are then stitched together into videos
using SIERRA. This can be useful to observe how the spatial distribution of
different aspects of robot behaviors (e.g., robot occupancy, inter-robot
interference, task execution location, etc.)  change over time. Videos are built
from .csv files rendered into images using matplotlib.


- CRW swarm exploration spatial distribution (i.e., a robot occupancy
  probability distribution for robots currently search for objects, as opposed
  to carrying them back to the nest), shown as a 2D heatmap which evolves over
  time. As the probability that a robot will be at a given X,Y location changes
  over time, the color of the heatmap changes as well. Notice how the swarm
  quickly convergences to a steady-state distribution.

  {{< video library="true" controls="yes" class="alignleft" src="showcase/crw/block-acq-explore-locs2D.mp4" width=50px >}}

- STOCHM swarm exploration spatial distribution (i.e., a robot occupancy
  probability distribution for robots currently search for objects, as opposed
  to carrying them back to the nest or a cache), shown as a 2D heatmap which
  evolves over time. As the probability that a robot will be at a given X,Y
  location changes over time, the color of the heatmap changes as well. Notice
  that the expected location for STOCHM swarms is split between the nest and the
  cache, in contrast to CRW swarms, and although STOCHM swarms still converge
  quickly to a steady-state distribution, it is not as smooth as CRW swarms,
  because robots have multiple tasks to choose from, not all of which involve
  exploring for objects (e.g., the Collector task).

{{< video library="true" controls="yes" class="alignright" src="showcase/stochm/block-acq-explore-locs2D.mp4"  width=50px >}}
