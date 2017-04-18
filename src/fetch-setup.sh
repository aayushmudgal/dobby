# Choose a place for creating catkin workspace for fetch
if [ $# -eq 0 ]
then DIR="../src/"
else
DIR=$1
fi
cd $DIR

# Clone github repository
git clone https://github.com/modernAlcibiades/DoB.git fetch_ws
cd fetch_ws


#echo $DIR

