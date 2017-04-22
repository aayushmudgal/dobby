if [ $# -eq 0 ]
then DIR="fetch_ws"
else
DIR=$1
fi

git clone https://github.com/modernAlcibiades/DoB.git $DIR
cd $DIR


#echo $DIR

