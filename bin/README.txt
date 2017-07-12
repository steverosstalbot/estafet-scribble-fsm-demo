How to build it and run it:

1. mvn package
2. cp target/easyfsm-1.0-SNAPSHOT.jar lib/.
3. ./fsm-server.sh 4045 /estafet/fsm/demo/api $SCRIBBLEDIR/bin

Then run the client in another window:

4. ./auth-test.sh 4045 /estafet/fsm/demo/api

You should see the server become a role (a finite state machine) and the client will then exercise the fsm.

SCRIBBLEDIR should be set as the root of where all of the demo lives.
It relies on their being a bin and a lib and a bin/generated within the $SCRIBBLEDIR folder hierarchy.
