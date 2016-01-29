## Deploy to AWS
Install [JQ](https://stedolan.github.io/jq/) to enable JSON parsing that is used
to get results between AWS commands.

In Debian and Ubuntu Linux distributions
```sh
sudo apt-get install jq
```

Source the AWS commands these commands are shell scripts
that create the necessary elastic beanstalk roles, users, groups and
elastic beanstalk permissions to your account. Well to my account right now.

The scripts in `scripts/aws/iam` are about learning what is absolutely necessary
if I am starting with a fresh AWS account and I want to deploy with Elastic
Beanstalk to AWS.

```sh
source ./scripts/iam/commands.sh
```

### Create
aws_up
scripts/aws/elasticbeanstalk/init.sh
scripts/aws/elasticbeanstalk/create.sh

### Destroy
Destroy all of the permissions from the AWS account to deploy. This is when you
want to clean up your account and start from scratch.

`aws_down`

# Sample Phoenix Application

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
