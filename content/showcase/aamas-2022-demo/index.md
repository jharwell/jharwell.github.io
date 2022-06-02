---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "SIERRA: A Modular Framework For Research Automation"
summary: "
An overview of the architecture of SIERRA and how it can be used to automate
research driven by the scientific method generally, and agent research
specifically.
"

authors: []
tags:
- aamas-2022

weight: 1
categories: []
date: 2022-01-22T

tags:
- Research
- ARGoS
- ROS
- Turtlebot3
- Active

# Optional external URL for project (replaces project detail page).
# external_link: "https://github.com/swarm-robotics/sierra.git"

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

- url: https://github.com/swarm-robotics/sierra.git
  icon_pack: fab
  icon: github
  name: SIERRA GitHub

- url: https://swarm-robotics-sierra.readthedocs.io/en/latest
  icon_pack: fa
  icon: book
  name: SIERRA Docs

slides: ""
toc: true
---

# Summary

A more detailed explanation of the SIERRA framework presented in
[AAMAS2022]({{<ref "publication/harwell-2022-a-SIERRA">}}).

Note: The version of SIERRA demonstrated here is older than the current SIERRA
version--see the [docs](https://swarm-robotics-sierra.readthedocs.io/en/latest)
for the latest overview.

This page contains:

- An overview of the SIERRA architecuture and automation capabilities

- A demonstration of SIERRA's ability to automate generating experiments for
  multiple platforms:

  - [ARGoS](http://www.argos-sim.info/index.php)

  - [ROS+Gazebo] (i.e., using [ROS](https://ros.org) with
    [Gazebo](http://gazebosim.org))

  - [ROS+Turtlebot3] (i.e., using [ROS](https://ros.org) with the
    [Turtlebot3](https://emanual.robotis.com/docs/en/platform/turtlebot3/overview/))

- A demonstration of SIERRA's ability to visualize simulation results.


# SIERRA Architecture

{{< figure library="true" src="sierra-architecture.png" width="80%" caption="Architecture of SIERRA,organized by pipeline stage. Pipeline stages are listed left to right, and an approximate joint architectural/functional stack is top to bottom for each stage. '...' indicates areas where SIERRA is designed via python plugins to be easily extensible. 'Host machine' indicates the machine SIERRA was invoked on." >}}

# SIERRA Research Automation

## 1. Generating experiment inputs

Experiments using the scientific method have an independent variable whose
impact on results are measured through a series of trials. SIERRA allows you to
express this as a research query on the command line and then parses your query
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
and the nature of the experiment). For real robots, SIERRA will execute one
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
| [Torque/MOAB](https://adaptivecomputing.com/cherry-services/torque-resource-manager) | ARGoS, ROS+Gazebo |
| ADHOC (suitable for a miscellaneous collection of networked compute nodes for a research group) | ARGoS, ROS+Gazebo |
| Local machine (for testing) | ARGoS, ROS+Gazebo |
| [ROS+Turtlebot3](https://emanual.robotis.com/docs/en/platform/turtlebot3/overview) | ROS+Gazebo, ROS+robot |

To add additional execution environments, see the
[docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/tutorials/plugin/exec_env_plugin.html).

## 3. Processing experiment results

SIERRA supports a number of data formats which simulations/real robot
experiments can output their data (e.g., the number of robots engaged in a given
task over time) for processing. SIERRA can generate various statistics from the
results, such as confidence intervals on observed behavior.

## 4. Generating deliverables

SIERRA can generate many deliverables from the processed experimental results
automatically (independent of the platform/execution environment!), thus greatly
simplifying reproduction of previous results if you need to tweak a given graph
(for example). SIERRA currently supports generating the following deliverables:

   - Camera-ready linegraphs, heatmaps, 3D surfaces, and scatterplots directly
     from averaged/statistically processed experimental data using matplotlib
.
   - Videos built from frames captured during simulation or real robot
     operation.

   - Videos built from captured experimental output .csv files.

   - SIERRA has rich support for running arbitrary models against experimental
     data (or stand-alone) to generate predictions and plotting the results
     together.

Some examples are below.

### Image plots

| Heatmaps from output .csv files | Linegraphs from output .csv files |
| ------------------------------- | --------------------------------- |
| {{<figure library="true" src="showcase/block-acq-locs2D-HM.png" caption="Average block pickup locations for a foraging task. This demonstrates data processing during stage 3 (averaging) and automatic plotting of results according to configuration during stage 4." width="40%">}} |{{<figure library="true" src="showcase/cc-pm-scalability-norm-2020journalsc1-RN.96x96+population_size.Log2048.png" caption="Scalability of different algorithms engaged on a foraging task."width="50%">}} |
| {{<figure library="true" src="showcase/pm-blocks-transported-cum.png" caption="Measurement of swarm performance on a foraging task along two different axes for a single controller. This demonstrates SIERRA's ability to handle multiple independent variables during experiment generation, execution, and results processing." width="50%">}}| {{<figure library="true" src="showcase/cc-PM-ss-raw-2021trosc2-PL.16x16x2+block_motion_dynamics.C4.F25p0.RW0p001+population_constant_density.5p0.I16.C8_0.png" caption="Measurement of raw swarm performance across several controllers within the same foraging scenario. This demonstrates SIERRA's ability automatically calculate and place statistical measures such as confidence intervals, boxplots, etc., on linegraphs automatically." width="50%" >}}


### Videos from from output .csv files

In the below videos, we show demonstrate rendering two-dimensional .csv files
from simulation outputs into images which are then stitched together into
videos. This can be useful to observe how the spatial distribution of different
aspects of robot behaviors (e.g., robot occupancy, inter-robot interference,
task execution location, etc.)  change over time. Videos are built from .csv
files rendered into images using matplotlib.

{{< video library="true" src="showcase/stochm/block-acq-explore-locs2D.mp4" width="500px">}}
{{< video library="true" class="alignleft" src="showcase/crw/block-acq-explore-locs2D.mp4" width=50px >}}

### Videos from captured simulation visual frames

ARGoS video of 16,000 robots swarming. This demonstrates capturing of visual
simulation information and stitching together images into videos.

{{< video library="true" class="floatright" src="showcase/RN-800x800.mp4" >}}

ARGoS videos of robots performing foraging. This demonstrates SIERRA's
utilization of multiple ARGoS cameras+interpolation (`--camera-config`) between
them to create nice videos. Colored lines indicate the virtual "forces" acting
on robots: motion towards light, collision avoidance, etc. (not part of SIERRA).

{{< video library="true" class="floatright" src="showcase/crw/SS12x6.mp4" width="40%">}}
{{< video library="true" class="floatright" src="showcase/dpo/SS12x6.mp4" width="40%">}}



## 5. Controller/scenario comparison

SIERRA can take pieces from graphs generated in stage 4 (e.g., individual
lines)and put them on a single graph to generate camera ready comparison
graphs. It can generate comparison graphs for:

- Different robot controllers which have all been run in the same scenario.
- A single robot controller which has been run in multiple scenarios.

Some examples are below.

| Combined Heatmaps | Combined Linegraphs |
| ----------------- | ------------------- |
| {{<figure library="true" src="showcase/cc-pm-blocks-transported-cum-DS.36x18.png" caption="Two heatmaps generated from two different controllers during stage 4 placed on the same plot (different colorbars). This demonstrates SIERRA's ability to combine stage4 outputs generated from multiple independent variables." class="left" width="80%" >}}| {{< figure library="true" src="showcase/sc-N_h-d0.CRW.png" caption="Predictions vs. empirical data for a given aspect of swarm foraging behavior across scenarios. This demonstrates: (1) Combining parts of multiple stage 4 graphs together onto a single plot (1) plotting multiple auto-generated .csvs together onto a single graph (one for averaged empirical data, one for model predictions), (2) automatically running user-specified models against processed data. Note also SIERRA's placement of confidence intervals around empirical data (this can be disabled if desired)." width="40%">}} |

# SIERRA Platform Support

SIERRA currently supports the following platforms, allowing you to use the same
interface for the below pipeline to automate your research workflow:

- [ARGoS](https://www.argos-sim.info/index.php) for fast simulation of large
  robot swarms via multiple physics engines.

- [Gazebo](https://www.gazebosim.org) for ROS+Gazebo.

- [ROS](https://ros.org) for ROS on a real robot.

To define additional platforms, see the
[docs](https://swarm-robotics-sierra.readthedocs.io/en/latest/src/tutorials/plugin/platform_plugin.html).


# SIERRA Demonstration Context

To demonstrate the capabilities of SIERRA by performing a mini-investigation, we
will use a foraging (object gathering) task. The video below should give you
some idea of how a system of N foraging robots might perform on a foraging
task. This video was automatically generated by SIERRA using captured ARGoS
frames.

{{< video library="true" autoplay="true" loop="true" class="aligncenter" src="showcase/crw/2021-tro-sc1_0_output.mp4" width=50px >}}

# Demonstration: Experiment Generation (stage 1)

Given a research question such as "How will system behavior change if I change
the system size from 1...10?" as an independent variable, SIERRA can automate
the generation of experiments to answer this question for a variety of platforms
(simulators or real robots).

The user (1) defines an arbitrary cmdline syntax to express a class of research
questions (a `--batch-criteria`), (2) defines changes, additions, or removals
to/from a template input XML file based on the specific instance of the query,
and (3) SIERRA does the rest. For example, if we define
`population_size.{increment_type}{N}` to answer queries similar to the one posed
above, we can then pass `population_size.Linear10` to direct SIERRA to generate
10 experiments with different system sizes 1...10. How to change the system size
is application dependent, which is why the user has to define how to do so via
(2).

Depending on the nature of our system, experiments may be deterministic, in
which case we only need to run each experiment once. However, for many
applications, there is some aspect of non-determinism (e.g., noise from real
robot sensors/actuators), in which case we need to run each experiment multiple
times. SIERRA handles this cleanly as well through the `--n-runs` option. Each
experimental run is given its own random seed (which, for maximum
reproducibility is not overwritten if experiments are regenerated, unless forced
via `--no-preserve-seeds`).

## Example Template Input Files

> Note: the below are partial template input files to demonstrate SIERRA's
> capabilities, and are not likely functional as-is with ARGoS or ROS.

The ARGoS `ideal.argos` is based on the ARGoS foraging example
[here](https://www.argos-sim.info/examples.php). The ROS+Gazebo and
ROS+Turtlebot3 `turtlebot3_sim.launch` is based on the ROBOTIS Gazebo example
[here](https://github.com/ROBOTIS-GIT/turtlebot3_simulations).

<details> <summary>ARGoS (ideal.argos)</summary>

     <?xml version="1.0" ?>}
     <argos-configuration>
       <framework>
         <system threads="0" />
         <experiment length="0"
                     ticks_per_second="10"
                     random_seed="123" />
       </framework>
       <controllers>

         <footbot_foraging_controller id="ffc"
                                      library="build/libsample_project">
           <actuators>
             <differential_steering implementation="default" />
             <leds implementation="default" medium="leds" />
             <range_and_bearing implementation="default" />
           </actuators>
           <sensors>
             <footbot_proximity implementation="default" show_rays="false" />
             <footbot_light implementation="rot_z_only" show_rays="false" />
             <footbot_motor_ground implementation="rot_z_only" />
             <range_and_bearing implementation="medium" medium="rab" />
           </sensors>
           <params>
             <diffusion go_straight_angle_range="-5:5"
                        delta="0.1" />
             <wheel_turning hard_turn_angle_threshold="90"
                            soft_turn_angle_threshold="70"
                            no_turn_angle_threshold="10"

                            max_speed="10" />
             <state initial_rest_to_explore_prob="0.1"
                    initial_explore_to_rest_prob="0.1"
                    food_rule_explore_to_rest_delta_prob="0.01"
                    food_rule_rest_to_explore_delta_prob="0.01"
                    collision_rule_explore_to_rest_delta_prob="0.01"
                    social_rule_explore_to_rest_delta_prob="0.01"
                    social_rule_rest_to_explore_delta_prob="0.01"
                    minimum_resting_time="50"
                    minimum_unsuccessful_explore_time="600"
                    minimum_search_for_place_in_nest_time="50">
               <food_rule active="true" food_rule_explore_to_rest_delta_prob="0.01" />
             </state>
           </params>
         </footbot_foraging_controller>
       </controllers>
       <loop_functions library="build/libsample_project"
                       label="foraging_loop_functions">
         <foraging items="15"
                   radius="0.1"
                   energy_per_item="1000"
                   energy_per_walking_robot="1"
                   output_dir="output"
                   datafile="collected-data.csv"/>
       </loop_functions>

       <arena size="5, 5, 2" center="0,0,1">

         <floor id="floor"
                source="loop_functions"
                pixels_per_meter="50" />

         <box id="wall_north" size="4,0.1,0.5" movable="false">
           <body position="0,2,0" orientation="0,0,0" />
         </box>
           <box id="wall_south" size="4,0.1,0.5" movable="false">
           <body position="0,-2,0" orientation="0,0,0" />
         </box>
         <box id="wall_east" size="0.1,4,0.5" movable="false">
           <body position="2,0,0" orientation="0,0,0" />
         </box>
         <box id="wall_west" size="0.1,4,0.5" movable="false">
           <body position="-2,0,0" orientation="0,0,0" />
         </box>

         <light id="light_1"
                position="-2,-1.5,1.0"
                orientation="0,0,0"
                color="yellow"
                intensity="3.0"
                medium="leds" />
         <light id="light_2"
                position="-2,-0.5,1.0"
                orientation="0,0,0"
                color="yellow"
                intensity="3.0"
                medium="leds" />
         <light id="light_3"
                position="-2,0.5,1.0"
                orientation="0,0,0"
                color="yellow"
                intensity="3.0"
                medium="leds" />
         <light id="light_4"
                position="-2,1.5,1.0"
                orientation="0,0,0"
                color="yellow"
                intensity="3.0"
                medium="leds" />

         <distribute>
           <position method="uniform" min="-2,-2,0" max="-1,2,0" />
           <orientation method="uniform" min="0,0,0" max="360,0,0" />
           <entity quantity="20" max_trials="100">
             <foot-bot id="fb">
               <controller config="ffc" />
             </foot-bot>
           </entity>
              </distribute>

       </arena>
       <physics_engines>
         <dynamics2d id="dyn2d" />
       </physics_engines>
       <media>
         <range_and_bearing id="rab" />
         <led id="leds" />
       </media>
       <visualization>
         <qt-opengl>
           <camera>
             <placements>
               <placement index="0" position="0,0,4.34" look_at="0,0,0" up="1,0,0" lens_focal_length="20" />
             </placements>
           </camera>
           <user_functions label="foraging_qt_user_functions" />
         </qt-opengl>
       </visualization>
     </argos-configuration>

</details>

<details>
  <summary>ROS+Gazebo (turtlebot3_sim.launch)</summary>

  <?xml version="1.0" ?>
  <rosgazebo-configuration>
    <launch>
      <include file="$(find gazebo_ros)/launch/empty_world.launch">
        <arg name="world_name" value="$(find turtlebot3_gazebo)/worlds/turtlebot3_house.world"/>
        <arg name="paused" value="false"/>
        <arg name="use_sim_time" value="true"/>
        <arg name="gui" value="true"/>
        <arg name="gui" value="true"/>
        <arg name="headless" value="false"/>
        <arg name="debug" value="false"/>
      </include>

    </launch>
    <params>
      <controllers>

        <__CONTROLLER__ id="ffc"
                        library="foo">
          <params>
            <rng seed="123"/>
            <output
                output_parent="output"
                output_leaf="__current_date__"
                />
          </params>
        </__CONTROLLER__>

      </controllers>
    </params>
  </rosgazebo-configuration>

</details>

<details>
  <summary>ROS+Turtlebot3 (turtlebot3_real.launch)</summary>

  <?xml version="1.0" ?>
  <rosrobot-configuration>
    <launch>
    </launch>
  </rosrobot-configuration>

</details>

## ARGoS input files after SIERRA processing

Using the following SIERRA command with the above template:

    sierra-cli \
        --sierra-root=$HOME/exp \
        --template-input-file=templates/ideal.argos \
        --n-runs=1 \
        --project=fordyca \
        --physics-n-engines=1 \
        --time-setup=time_setup.T500 \
        --controller=d0.CRW \
        --scenario=SS.12x6x1 \
        --batch-criteria population_size.Linear10 \
        --with-robot-leds

We obtain the following for experiment 0 (which has 1 robot):

<details>
     <summary>Experiment 0 (from ideal.argos)</summary>

     <?xml version="1.0" ?>
     <argos-configuration>
       <framework>
         <system threads="1"/>
         <experiment length="500" ticks_per_second="5" random_seed="49167736"/>
       </framework>
       <controllers>
         <footbot_foraging_controller id="ffc" library="libargos_project">
           <actuators>
             <differential_steering implementation="default"/>
           </actuators>
           <sensors>
             <footbot_proximity implementation="default" show_rays="false"/>
             <footbot_light implementation="rot_z_only" show_rays="false"/>
             <footbot_motor_ground implementation="rot_z_only"/>
           </sensors>
           <params>
             <diffusion go_straight_angle_range="-5:5" delta="0.1"/>
             <wheel_turning hard_turn_angle_threshold="90" soft_turn_angle_threshold="70" no_turn_angle_threshold="10" max_speed="10"/>
             <state initial_rest_to_explore_prob="0.1" initial_explore_to_rest_prob="0.1" food_rule_explore_to_rest_delta_prob="0.01" food_rule_rest_to_explore_delta_prob="0.01" collision_rule_explore_to_rest_delta_prob="0.01" social_rule_explore_to_rest_delta_prob="0.01" social_rule_rest_to_explore_delta_prob="0.01" minimum_resting_time="50" minimum_unsuccessful_explore_time="600" minimum_search_for_place_in_nest_time="50">
               <food_rule active="true" food_rule_explore_to_rest_delta_prob="0.01"/>
             </state>
           </params>
         </footbot_foraging_controller>
       </controllers>
       <loop_functions library="libargos_project" label="foraging_loop_functions">
         <foraging items="15" radius="0.1" energy_per_item="1000" energy_per_walking_robot="1" output_dir="/home/jharwell/exp/test/argos_project/foraging.footbot_foraging/template-LowBlockCount.10x10x1+population_size.Log8/exp-outputs/exp0/template_0_output/output" datafile="collected-data.csv"/>
       </loop_functions>
       <arena size="5, 5, 2" center="0,0,1">
         <floor id="floor" source="loop_functions" pixels_per_meter="50"/>
         <box id="wall_north" size="4,0.1,0.5" movable="false">
           <body position="0,2,0" orientation="0,0,0"/>
         </box>
         <box id="wall_south" size="4,0.1,0.5" movable="false">
           <body position="0,-2,0" orientation="0,0,0"/>
         </box>
         <box id="wall_east" size="0.1,4,0.5" movable="false">
           <body position="2,0,0" orientation="0,0,0"/>
         </box>
         <box id="wall_west" size="0.1,4,0.5" movable="false">
           <body position="-2,0,0" orientation="0,0,0"/>
         </box>
         <light id="light_1" position="-2,-1.5,1.0" orientation="0,0,0" color="yellow" intensity="3.0" medium="leds"/>
         <light id="light_2" position="-2,-0.5,1.0" orientation="0,0,0" color="yellow" intensity="3.0" medium="leds"/>
         <light id="light_3" position="-2,0.5,1.0" orientation="0,0,0" color="yellow" intensity="3.0" medium="leds"/>
         <light id="light_4" position="-2,1.5,1.0" orientation="0,0,0" color="yellow" intensity="3.0" medium="leds"/>
         <distribute>
           <position method="uniform" min="-2,-2,0" max="-1,2,0"/>
           <orientation method="uniform" min="0,0,0" max="360,0,0"/>
           <entity quantity="1" max_trials="100">
             <foot-bot id="fb">
               <controller config="ffc"/>
             </foot-bot>
           </entity>
         </distribute>
       </arena>
       <physics_engines>
         <dynamics2d id="dyn2d"/>
       </physics_engines>
     </argos-configuration>

</details>

### Important Notes

- Many subtrees have been stripped out according to configuration:
  `<visualization>`, `<range_and_bearing>`, etc.

- Random seed set.

- \# of robots modified according to `--batch-criteria`.

-  `--physics-n-engines` was set to 1. If it was > 1, then SIERRA would handle
  setting up ARGoS with multiple engines for you.

- Unique output directories set according to configuration (this is a
  `--project` specific add on to SIERRA).

- The length of the simulation was set to 500 seconds.

## Ros+Gazebo input files after SIERRA processing

Using the following SIERRA command with the above ROS+Gazebo template:

    sierra-cli \
        --platform=platform.rosgazebo \
        --project=ros_project \
        --n-runs=4 \
        --template-input-file=exp/ideal.launch \
        --scenario=HouseWorld.10x10x1 \
        --sierra-root=$HOME/exp \
        --batch-criteria population_size.Linear10  \
        --controller=turtlebot3_sim.wander \
        --time-setup=time_setup.T50
        --robot turtlebot3 \
        --robot-positions 0,0,0 1,1,0 2,2,0 3,3,0 4,4,0 5,5,0 6,6,0 7,7,0 8,8,0 9,9,0, 10,10,0

We obtain the following for experiment 0 (1 robot):

<details>
     <summary>Experiment 0 (from turtlebot3_house.launch)</summary>

     <?xml version="1.0" ?>
     <launch>
       <include file="$(find gazebo_ros)/launch/empty_world.launch">
         <arg name="world_name" value="$(find turtlebot3_gazebo)/worlds/turtlebot3_house.world"/>
         <arg name="use_sim_time" value="true"/>
         <arg name="verbose" value="true"/>
         <arg name="server_required" value="true"/>
         <arg name="gui" value="false"/>
       </include>
       <group ns="tb3_0">
         <param name="tf_prefix" value="tb3_0"/>
         <param name="robot_description" command="$(find xacro)/xacro $(find turtlebot3_description)/urdf/turtlebot3_burger.urdf.xacro"/>
         <node name="spawn_urdf" pkg="gazebo_ros" type="spawn_model" args="-urdf -model turtlebot3_burger_tb3_0 -x 5.0 -y 5.0 -z 0.0 -param robot_description"/>
         <node name="turtlebot3_drive" pkg="turtlebot3_gazebo" type="turtlebot3_drive" required="true"/>
         <param name="cmd_vel_topic_name" value="cmd_vel"/>
       </group>

       <param name="sierra/experiment/length" value="10"/>
       <node name="sierra_timekeeper" pkg="sierra_rosbridge" type="sierra_timekeeper.py" required="true"/>
       <param name="sierra/experiment/random_seed" value="527758144"/>
       <param name="sierra/experiment/param_file" value="/home/jharwell/exp/test/ros_project/turtlebot3_sim.wander/turtlebot3_house-HouseWorld.10x10x1+population_size.Linear10/exp-inputs/exp0/turtlebot3_house_0.params"/>
     </launch>

</details>

### Important Notes

- The SIERRA command takes slightly different arguments because a different
  `--platform` is selected.

- The `--robot` argument and `--controller` arguments allows the user to tell
  SIERRA to add any robot or controller specific nodes to the template `.launch`
  file, or to otherwise make arbiratry changes to it prior to SIERRA applying
  the `--batch-criteria` to it to generate the experiments.

- The starting positions of the robots are specified precisely here; SIERRA can
  also draw them randomly from the specified scenario dimensions (`10x10`
  here).

- Since Gazebo+ROS doesn't have a way to say "Stop running after this long",
  SIERRA inserts a timekeeper node to provide this functionality.

- SIERRA can utilize the ROS parameter server when making changes to the
  template input file (all parameters under `<launch>`), or write to a separate
  `.params` file (all parameters under `<params>`) as shown here. This is useful
  for sharing code between ROS and other robotic platforms which require
  strictly XML parameters.


## Ros+Turtlebot3 input files after SIERRA processing

Using the following SIERRA command with the above ROS+Turtlebot3 template:

    sierra-cli \
        --platform=platform.rosrobot \
        --project=ros_project \
        --n-runs=4 \
        --template-input-file=exp/turtlebot3_real.launch \
        --scenario=HouseWorld.10x10x1 \
        --sierra-root=$HOME/exp \
        --batch-criteria population_size.Linear10  \
        --controller=turtlebot3_real.wander \
        --time-setup=time_setup.T50 \
        --robot turtlebot3

We obtain the following for experiment 0 (1 robot):

<details>
    <summary>Experiment 0 (from turtlebot3_real.launch)</summary>

    <launch>
      <group ns="tb3_0">
        <param name="tf_prefix" value="tb3_0"/>
        <include file="$(find turtlebot3_bringup)/launch/turtlebot3_core.launch"/>
        <include file="$(find turtlebot3_bringup)/launch/turtlebot3_lidar.launch"/>
        <node name="turtlebot3_drive" pkg="turtlebot3_gazebo" type="turtlebot3_drive" required="true"/>
        <param name="cmd_vel_topic_name" value="cmd_vel"/>
      </group>
      <param name="sierra/experiment/length" value="10"/>
      <param name="sierra/experiment/ticks_per_sec" value="1000"/>
      <node name="sierra_timekeeper" pkg="sierra_rosbridge" type="sierra_timekeeper.py" required="true"/>
      <param name="sierra/experiment/random_seed" value="415741535"/>
      <param name="sierra/experiment/param_file" value="/home/jharwell/exp/test/ros_project/turtlebot3_real.wander/turtlebot3_real-HouseWorld.10x10x1+population_size.Linear10/exp-inputs/exp0/turtlebot3_real_0.params"/>
    </launch>

</details>

# Demonstration: Experiment Execution (stage 2)

- Can be on real robot hardware, HPC resources, or the local machine.

- To change execution environment, change `--exec-env` (e.g., to
  `exec-env=hpc.slurm` for a SLURM cluster).

- If needed, IP addresses of machines/robots can be provided to SIERRA via
  `--nodefile` on an environment variable.

# Demonstration: Experiment Results Processing (stage 3)

As seen in the examples above, one of the things that SIERRA can do in stage 3
is take .csv files like the one output below, and transform them into .png files
to be stitched together into videos in stage 4. A .csv - .png pair is shown
below.

## Raw .csv from outputs
{{% include "./static/media/showcase/crw/block-acq-explore-locs2D_0000001000.md" %}}

## "Imagized" .csv
{{<figure library="true" src="showcase/crw/block-acq-explore-locs2D_0000001000.png" caption="The result of rendering the .csv above into a .png" width="40%">}}

# Demonstration: Experimental Results Visualization (stage 4)

{{< video library="true" class="aligncenter" src="showcase/2022-aamas-sierra-demo.mp4" controls="yes">}}

## Exploring Independent Variables

- Exploring the behavior of the an algorithm across swarm sizes 1,2,4,8 by
  passing `--batch-criteria population_size.Log8`; the specification for how
  many sizes to test with is not hardcoded in SIERRA, but parsed at runtime, so
  it can be anything.

  <details>
    <summary>Full SIERRA command</summary>

        sierra-cli \
            --sierra-root=$HOME/exp\
            --template-input-file=templates/2022-aamas-demo.argos \
            --project=fordyca\
            --physics-n-engines=1\
            --time-setup=time_setup.T1000\
            --batch-criteria population_size.Log8\
            --models-disable\
            --no-verify-results

  </details>

- Putting box confidence on some of the generated graphs by re-running
  SIERA stages 3 and 4 by adding `--pipeline 3 4 --dist-stats=conf95` to my
  SIERRA command.

  <details>
    <summary>Updated SIERRA command</summary>

        sierra-cli \
            --sierra-root=$HOME/exp\
            --template-input-file=templates/2022-aamas-demo.argos \
            --project=fordyca\
            --physics-n-engines=1\
            --time-setup=time_setup.T1000\
            --batch-criteria population_size.Log8\
            --models-disable\
            --no-verify-results\
            --pipeline 3 4\
            --dist-stats=conf95

  </details>

- Running additional simulations after (for example) I realize the confidence
  intervals on the graphs are not tight enough, and changing my mind and and
  putting box and whisker plots on the graphs instead of confidence intervals,
  by adding `--exec-resume --dist-stats=bw --n-sims=16` to my SIERRA
  command. Note how SIERRA does not re-run simulations which have already
  finished!

  <details>
    <summary>Updated SIERRA command</summary>

        sierra-cli \
            --sierra-root=$HOME/exp\
            --template-input-file=templates/2021-ijcai-demo.argos \
            --project=fordyca\
            --physics-n-engines=1\
            --time-setup=time_setup.T1000\
            --batch-criteria population_size.Log8\
            --models-disable\
            --no-verify-results\
            --exec-resume\
            --dist-stats=bw\
            --n-sims=16

  </details>

# SIERRA In The Wild

SIERRA has been used in many of my research projects:

-  [FORDYCA]({{<ref "project/fordyca">}})
-  [PRISM]({{<ref "project/prism">}})

And publications:

-  [IJCAI2019]({{<ref "publication/harwell-2019-a-metrics">}})
-  [AAMAS2020]({{<ref "publication/harwell-2020-a-demystify">}})
-  [TRO2021]({{<ref "publication/harwell-2021-a-metrics">}})
-  [AURO2022]({{<ref "publication/harwell-2022-b-ODE">}})
