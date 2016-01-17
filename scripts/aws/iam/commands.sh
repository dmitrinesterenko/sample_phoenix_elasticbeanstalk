#!/bin/bash
function set_dir(){
  cd $AWS_SCRIPTS_DIRECTORY
  pwd
}
function aws_up(){
  set_dir
 ./create-group_deploy.sh
 ./create-user_deploy.sh
 ./add-user-to-group_deploy_deploy.sh
 ./attach-group-policy_elasticbeanstalk-fullaccess.sh deploy
 ./create-role-elasticbeanstalk-ec2.sh
 ./create-instance-profile_elasticbeanstalk-ec2-role.sh
 ./add-role-to-instance-profile_elasticbeanstalk-ec2-role.sh
 ./create-policy-elasticbeanstalk-service-monitoring.sh
 ./create-role-elasticbeanstalk-service.sh
 ./attach-role-policy-elasticbeanstalk-service-monitoring.sh
}

function aws_down(){
  set_dir
 ./remove-user-from-group_deploy_deploy.sh
 ./delete-group_deploy.sh
 ./delete-access-key_deploy.sh
 ./delete-user_deploy.sh
 ./detach-group-policy_elasticbeanstalk-fullaccess.sh
 ./remove-role-from-instance-profile-elasticbeanstalk-ec2.sh
 ./delete-role-elasticbeanstalk-ec2.sh
 ./detach-policy-elasticbeanstalk-service-monitoring.sh
 ./delete-policy-elasticbeanstalk-service-monitoring.sh
 ./delete-role-elasticbeanstalk-service.sh



}
