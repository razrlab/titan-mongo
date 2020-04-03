#!/bin/sh
read -sp 'Choose whether you have a simple (1) or replica setup (2): ' choicevar
case $choicevar in

1)
    echo "Stopping off simple setup..."
    docker-compose -f ./docker-compose-simple.yml down
    ;;

2)
    echo "Stopping off replica setup..."
    docker-compose -f ./docker-compose-replica.yml down
    ;;

*)
    echo "wrong choice...try again"
    ;;
esac
