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

SIERRA is named thusly because it will save you a LITERAL, (not figurative)
mountain of work. It is basically a plugin-based framework for automating
research driven by the scientific method. SIERRA is well documented--see the
docs [here](https://swarm-robotics-sierra.readthedocs.io/en/latest/) to get
started using it!

# Automated Research Pipeline

![SIERRA Architecture](./architecture.png "
Architecture of SIERRA,organized by pipeline stage. Pipeline stages are listed
left to right, and an approximate joint architectural/functional stack is top to
bottom for each stage. “... ” indicates areas where SIERRA is designed via
python plugins to be easily extensible. “Host machine” indicates the machine
SIERRA was invoked on.")

## 1. Generating experiment inputs

Experiments using the scientific method have an independent variable whose
impact on results are measured through a series of trials. SIERRA allows you to
express this as a research query on the command line, and then parses your query
to make changes to a template input file to generate launch commands and
experimental inputs to operationalize it. Switching from targeting platform A
(e.g., ARGoS) to platform B (e.g., ROS+Gazebo) is as easy as changing a a single
command line argument (assuming your code is setup to handle both ARGoS and ROS
environments!). Similarly for switching from running on the local machine to
running on a HPC cluster. SIERRA handles all the "backend" aspects of running
experiments and allows you to focus on the fun parts--the research itself!

## 2. Running experiments

SIERRA currently supports two types of execution environments: simulators and
real robots, which are handled seamlessly with GNU parallel. For simulators,
SIERRA will run multiple experimental runs (simulations) from each experiment in
parallel (exact concurrency dependent on the limits of the computing hardware
and the nature of the experiment). For real robots, SIERRA will execution 1
experimental run at a time, per configuration (runs can have different
configuration/# of robots).

SIERRA supports multiple HPC environments for execution of experiments in
simulation
([docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/exec_env/hpc.html))
and on real robots
([docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/exec_env/robots.html)):

| Execution Environment     | Supported Platforms |
| ------------------------- | ------------------- |
| [SLURM](https://slurm.schedmd.com/documentation.html) | ARGoS, ROS+Gazebo |
| [Torque/MOAB](http://docs.adaptivecomputing.com/torque/5-0-1/help.htm#topics/torque/0-intro/torquewelcome.htm%3FTocPath%3DWelcome%7C_____0) | ARGoS, ROS+Gazebo |
| ADHOC (suitable for a miscellaneous collection of networked compute nodes for a research group) | ARGoS, ROS+Gazebo |
| Local machine (for testing) | ARGoS, ROS+Gazebo |
| [ROS+Turtlebot3](https://emanual.robotis.com/docs/en/platform/turtlebot3/overview) | ROS+Gazebo, ROS+robot |

To add additional execution environments, see the
[docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/tutorials/plugin/exec_env_plugin.html).

## 3. Processing experiment results

SIERRA supports a number of data formats which simulations/real robot
experiments can output their data (e.g., the number of robots engaged in a given
task over time) for processing. For more details see the
[docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/). SIERRA can
generate various statistics from the results such as confidence intervals on
observed behavior.

## 4. Generating deliverables

SIERRA can generate many deliverables from the processed experimental results
automatically (independent of the platform/execution environment!), thus greatly
simplifying reproduction of previous results if you need to tweak a given graph
(for example). SIERRA currently supports generating the following deliverables:

   - Camera-ready linegraphs, heatmaps, 3D surfaces, and scatterplots directly
     from averaged/statistically processed experimental data using matplotlib.
   - Videos built from frames captured during simulation or real robot
     operation.
   - Videos built from captured experimental output .csv files.

## 5. Controller/scenario comparison

SIERRA can take pieces from graphs generated in stage 4 and put them on a single
graph to generate camera ready comparison graphs. It can generate comparison
graphs for:

- Different robot controllers which have all been run in the same scenario.
- A single robot controller which has been run in multiple scenarios.

# Platform Support

SIERRA currently supports the following platforms, allowing you to use the same
interface for the below pipeline to automate your research workflow:

- [ARGoS](https://www.argos-sim.info/index.php) for fast simulation of large
  robot swarms via multiple physics engines.

- [Gazebo](https://www.gazebosim.org) for ROS+Gazebo.

- [ROS](https://ros.org) for ROS on a real robot.

To define additional platforms, see the
[docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/tutorials/plugin/platform_plugin.html).

# Where has it been used

It has been used in many of my research projects:

-  [FORDYCA]({{<ref "project/fordyca">}})
-  [PRISM]({{<ref "project/prism">}})

and publications:

-  [IJCAI2019]({{<ref "publication/harwell-2019-a-metrics">}})
-  [AAMAS2020]({{<ref "publication/harwell-2020-a-demystify">}})
-  [TRO2021]({{<ref "publication/harwell-2021-a-metrics">}})
-  [AURO2021]({{<ref "publication/harwell-2021-b-ODE">}})


To get started, check out the [docs](https://swarm-robotics-sierra.readthedocs.io/en/latest).
