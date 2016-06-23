*** Settings ***
Documentation	A test suite for creating application on Resin using resin-cli. 
...		It git pulls text2speech and pushes to the above application on Resin.
Resource	resource.robot

*** Variables ***
${USERNAME} =	horia_delicoti
${NAME} = 	resin
${TYPE} =	raspberry-pi
${PATH} =	/Users/horiadelicoti/sandbox/robot_test
${GIT} =	${USERNAME}@git.resin.io:${USERNAME}/${NAME}.git

*** Test Cases ***
Create application
	Create application on resin    ${NAME}    ${TYPE}

Install text2speech to the application
	Git clone text2speech
	Add git remote resin	${PATH}/text2speech	${GIT}
	Git push resin    ${PATH}/text2speech
