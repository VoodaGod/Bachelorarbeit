Repo containing everything relating to my Bachelor's Thesis.

The Neurorobotics_Unity3D_Client needs to be set up according to it's README.
Then,in order to use it with the NRP, update the NRP as follows:


enter the docker image with: 
	`docker exec -it nrp bash`

tested with NRP in following state, might work with newer versions as well:

GazeboRosPackages on branch NRPRES-42 commit df0eb2a23634680f0deb76e0e81a66e272a1558b  
Models on branch NRPRES-44 commit 4ece6f911081679407321ab8765061e528140d37

to see those branches, you might need to make sure all branches are fetched:  
in .git/config change 
	`fetch: refs/head/master`
to
	`refs/head/*`

after updating those modules:  
	in Models: 
		`./create-symlinks.sh`  
	in GazeboRosPackages: 
		`catkin_make`

don't forget to update Models in NRPClient:  
	Models repo should be at same commit as in NRP docker image  
	in project root dir:
		`python Assets/Models/scripts/copy_flat_hierarchy.py <PATH_TO_NRP_MODELS>`
