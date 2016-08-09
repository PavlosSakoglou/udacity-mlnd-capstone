echo "Freezing ./save/$@.pb"

~/github/tensorflow/bazel-bin/tensorflow/python/tools/freeze_graph \
	--input_graph=save/$@.pb \
	--input_checkpoint=save/$@.ckpt-0 \
	--output_graph=save/frozen_graph.pb \
	--output_node_names=predict_single_output

cp save/frozen_graph.pb android/assets/