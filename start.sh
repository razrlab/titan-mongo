#!/bin/sh
read -sp 'Choose whether you want a simple (1) or replica setup (2): ' choicevar
case $choicevar in

1)
    echo "Starting off simple setup..."
    docker-compose -f ./docker-compose-simple.yml up -d
    ;;

2)
    echo "Starting off replica setup..."
    docker-compose -f ./docker-compose-replica.yml up -d
    ;;

*)
    echo "wrong choice...try again"
    ;;
esac
