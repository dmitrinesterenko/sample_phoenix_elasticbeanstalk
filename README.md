# SamplePhoenix

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Deploy to AWS
### Create
* create-group_deploy.sh
* attach-group-policy_elasticbeanstalk-fulllaccess.sh
* create-user_deploy.sh
* create_aws-elasticbeanstalk-ec2-role.sh
* create-instance-profile_elasticbeanstalk-ec2-role.sh
* add-role-to-instance-profile_elasticbeanstalk-ec2-role.sh
* create_aws-elasticbeanstalk-service-monitoring-policy.sh
* create_aws-elasticbeanstalk-service-role.sh
* attach_elasticbeanstalk-service-monitoring-policy.sh

### Destroy
* remove-user-from-group_deploy_deploy.sh
* delete-group_deploy.sh
* delete-user_deploy.sh
* detach-group-policy_elasticbeanstalk-fullaccess.sh
## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
