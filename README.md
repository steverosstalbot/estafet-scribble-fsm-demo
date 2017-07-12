Scribble Finite State Machine Microservice Demo
================================================

This demo shows how we can inject a finite state machine into a webserver where the role is defined in a scribble description. One might think of it as the basis for lazy behavioural instantiation of a microservice. As such it is the basis for a serverless approach for stateful microservices with no loss of horizontal scale and an in built mechanism for recovery at any named state.

Scribble is a language for describing the choreography of a set of cooperating roles which we might think of as a set of microservices.

The webservice accepts an initial request to "become" the role in scribble (auth-test.sh) and this is sent to it as a POST request with the scribble description and the role we want it to play. The webserver then invokes the scribble compiler to project the finite state machine for the chosen role into a loadable configuration file (in XML) that is then loaded into the webserver so that it becomes the role. All subsequent messages to and from the webserver are then driven by the configuration file that embodies the finite state machine.

1. git clone <this repo>
2. Make sure the shell scripts in the bin folder are executable (chmod 0777 bin/*.sh)
3. Create bin/generated (mkdir bin/generated)
4. Set SCRIBBLEDIR to point to the place where this was cloned
5. In one window do:
	fsm-server.sh 4045 /estafet/fsm/demo/api $SCRIBBLEDIR/bin
6. In another window do:
	auth-test.sh 4045 /estafet/fsm/demo/api


What you should see is a web server form step 5 start up and wait. And then from step 6 it becomes a specific role based on the scribble in the bin folder. If you want to play further look at the scribble tutorial of Dr Ray Hu (https://www.doc.ic.ac.uk/~rhu/scribble/tutorial/).

There is also a youtube video on the estafet knowledge channel at:
https://www.youtube.com/channel/UCBIZtuN9rJ8TW9pDVRy1x8Q

In a separate embodiment the same example has been containerised (hence the Dockerfile in this project) and can be run as an instance in openshift (okay I shall use minishift in this instance but it is largely the same). What you need to do is shown in another movie (see below) on the estafet knowledge channel at:
https://www.youtube.com/channel/UCBIZtuN9rJ8TW9pDVRy1x8Q
