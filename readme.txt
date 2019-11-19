
Install

	git clone https://github.com/AlexeyAB/darknet
	cd darknet
	make

get some premade training weights

	wget https://pjreddie.com/media/files/darknet53.conv.74


*** Copy all the files in this directory into the darknet directory ***

Train

	./darknet detector train obj.data obj.cfg darknet53.conv.74 -map

Test

	./darknet detector test obj.data obj.cfg obj.weights <img.jpg>


Calculate Anchors

	./darknet detector calc_anchors obj.data -num_of_clusters 9 -width 416 -height 416

copy from ec2

	scp -r -i ~/.ssh/id_rsa.pub ubuntu@13.236.66.105:/home/ubuntu/output ~/output



Make Empty Files
	
	for f in *.jpg; do touch ${f%.jpg}.txt; done
	chmod 644 *


Tmux
	tmux
	tmux a  attach
	ctrl+b d detatch

Check on progress

	clear && scp ubuntu@52.65.163.141:~/ml-post/darknet/results.txt ~ && tail -1000 ~/results.txt | grep 'avg loss'


Save results to videofile

	./darknet detector demo obj.data yolo-obj.cfg yolo-obj_best.weights test.mp4 -out_filename res.avi

