# Description
A Robot keyword creates an application on Resin using [resin-cli](https://github.com/resin-io/resin-cli).
Then, a Robot test case git pulls [text2speech](https://github.com/resin-io/text2speech) and pushes to the above 
application on Resin.

# Requisites
* [Git](https://git-scm.com/)
* [resin_cli](https://github.com/resin-io/resin-cli)
* [Robot Framework](http://robotframework.org/)
* [Python 2.7.10](https://www.python.org/downloads/)

# Getting started
1. Login with your account on [resin.io](https://dashboard.resin.io/login)
2. Edit section Variables from file `create_app.robot`
 * `${USERNAME}` = *Username_ copied from [resin.io](https://dashboard.resin.io/apps)*
 * `${NAME}` = _The name of your application_
 * `${TYPE}` = _Device type_
 * `${PATH}` = _Working directory where you git cloned this repository_
3. Open terminal, change directory to the repository and run
 * `resin login` - Login to resin
 * `robot --outputdir results create_app.robot` - Robot script runs the test cases and output in directory `results`
4. Enter [Dashboard resin](https://dashboard.resin.io/apps) to check your application


# Contents
* `create_app.robot`:  A test suite for creating the application on Resin.
* `resoure.robot`:  Resoure file included in robot test create_app
* `results`:  Output of robot test
* `lib`:  Library with Robot keywords included in resoure.robot
