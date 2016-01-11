#!/bin/bash
function aws_up(){
  cd scripts/aws/iam
  create-group_deploy.sh
  attach-group-policy_elasticbeanstalk-fulllaccess.sh
  create-user_deploy.sh
  create_aws-elasticbeanstalk-ec2-role.sh
  create-instance-profile_elasticbeanstalk-ec2-role.sh
  add-role-to-instance-profile_elasticbeanstalk-ec2-role.sh
  create_aws-elasticbeanstalk-service-monitoring-policy.sh
  create_aws-elasticbeanstalk-service-role.sh
  attach_elasticbeanstalk-service-monitoring-policy.sh
}

function aws_down(){
  cd scripts/aws/iam
  pwd
 ./remove-user-from-group_deploy_deploy.sh
 ./delete-group_deploy.sh
 ./delete-user_deploy.sh
 ./detach-group-policy_elasticbeanstalk-fullaccess.sh

}
