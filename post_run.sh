#!/bin/sh
echo "Post processing..."
mkdir tmp
cd tmp
echo "Downloading data from kaggle..."
kaggle kernels output cobase2010/sc2-tweaking -p .
echo "Copying latest model data and run logs..."
rm -fr ../model/terran_latest.3.prev
mv ../model/terran_latest.3 ../model/terran_latest.3.prev
cp sc2-tweaking.log ../kaggle_log
cp HierNet-SC2/results.log ../kaggle_log
mv HierNet-SC2/model/20221028-203245 ../model/terran_latest.3
cd ..
# rm -fr tmp

echo "Done processing."