#!/bin/sh 
cd
my_home=`pwd`
echo $my_home



echo "ls ${my_home}/.local/lib/python3.6/site-packages/cyclus"
ls ${my_home}/.local/lib/python3.6/site-packages/cyclus

echo " "
echo " "

echo "import cyclus"
python -c "import cyclus"
echo "import cymetric"
python -c "import cymetric"

echo " "
echo " "

echo PYTHONPATH
export PYTHONPATH="${my_home}/.local/lib/python3.6/site-packages/"
echo "import cyclus"
python -c "import cyclus"
echo "import cymetric"
python -c "import cymetric"
unset PYTHONPATH


echo PATH
export OLD_PATH=${PATH}
export PATH="${PATH}:${my_home}/.local/lib/python3.6/site-packages/"

echo "import cyclus"
python -c "import cyclus"
echo "import cymetric"
python -c "import cymetric"
export PATH=${OLD_PATH}

echo LD_LIBRARY_PATH
export LD_LIBRARY_PATH="${my_home}/.local/lib/python3.6/site-packages/"

echo "import cyclus"
python -c "import cyclus"
echo "import cymetric"
python -c "import cymetric"
unset LD_LIBRARY_PATH


