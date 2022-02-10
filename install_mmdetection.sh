#!/bin/sh

pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html

git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection

pip install -r requirements/build.txt
pip install -v -e .

cd ..

git clone https://github.com/open-mmlab/mmcv.git
cd mmcv
MMCV_WITH_OPS=1 python3 -m pip install -e .
