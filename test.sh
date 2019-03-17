#!/bin/sh
latest=/media/chenyuxuan/M/chenyuxuan/caffe-ssd/examples/mobilenet_iter_100.caffemodel
#latest=$(ls -t snapshot/*.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
/media/chenyuxuan/M/chenyuxuan/caffe-ssd/build/tools/caffe train -solver="solver_test.prototxt" \
--weights=$latest \
