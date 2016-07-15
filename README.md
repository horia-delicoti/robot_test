# Description
The repo contains:
 * a Robot keyword to create an application on Resin using [resin-cli](https://github.com/resin-io/resin-cli) library
 * a Robot test case which pulls [text2speech](https://github.com/resin-io/text2speech) library and pushes to the above 
mentioned application

# Requisites
* [Git](https://git-scm.com/)
* [Resin Cli](https://github.com/resin-io/resin-cli)
* [Python 2.x](https://www.python.org/downloads/)
* [Robot Framework](http://robotframework.org/)

Alternately, run `pip install -r requirments.txt` to install python dependencies.

# Getting started
1. Login with your account on [resin.io](https://dashboard.resin.io/login)
2. Update the Variables section from file `create_app.robot` with the following information:
 * `${USERNAME}` = *Username copied from [resin.io](https://dashboard.resin.io/apps)*
 * `${NAME}` = _Choose a name for your application_
 * `${TYPE}` = _Device type_
 * `${PATH}` = _Working directory where you cloned this repository_
3. Open terminal, change directory to the location where you cloned the repository. Afterwards run the following steps:
 * `pip install -r requirments.txt` - Install required python dependencies 
 * `resin login` - Login to resin
 * `git clone https://github.com/resin-io/text2speech.git` - Clone [text2speech](https://github.com/resin-io/text2speech) repository
 * `robot --outputdir results create_app.robot` - Robot script runs the test cases and output in directory `results`
4. Enter [resin dashboard](https://dashboard.resin.io/apps)
5. More information about the run can be found in the output directory or by running: 
 * `rebot results/output.xml` 


# Contents
* `create_app.robot`:  A test suite for creating the application on Resin
* `resoure.robot`:  Resoure file included in robot test create_app
* `results`:  Output directory of robot test
* `lib`:  Library with Robot keywords included in resource.robot
* `requirments.txt`:  File containing a list of items to be installed using `pip install` 
