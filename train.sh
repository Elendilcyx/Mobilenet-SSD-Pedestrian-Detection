#!/bin/sh
CAFFE=/media/chenyuxuan/M/chenyuxuan/caffe-ssd
LOG=$CAFFE/examples/log/train-`date +%Y-%m-%d-%H-%M-%S`.log
if ! test -f /media/chenyuxuan/M/chenyuxuan/caffe-ssd/examples/MobileNetSSD_train.prototxt ;then
	echo "error: example/MobileNetSSD_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
#mkdir -p snapshot
/media/chenyuxuan/M/chenyuxuan/caffe-ssd/build/tools/caffe train -solver="/media/chenyuxuan/M/chenyuxuan/caffe-ssd/examples/solver_train.prototxt" \
#-weights="$CAFFE/examples/mobilenet_iter.caffemodel" #2>&1 | tee $LOG
#-snapshot="/media/chenyuxuan/M/chenyuxuan/caffe-ssd/examples/mobilenet_iter_73.solverstate"


