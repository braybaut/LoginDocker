
clear 

##Show container and Id 
echo "runing container"
echo 

docker ps -a | grep Up |  awk ' { print $1,"   " $NF}' 


 
echo 
echo 
## Insert Id or name of container  

echo "Insert id or name of Container to login bash"
read CONTAINER

##LOGIN TO CONTAINER 

ct=$CONTAINER && sudo nsenter --target $(docker inspect --format {{.State.Pid}} $ct) --moun --uts --ipc --net --pid



