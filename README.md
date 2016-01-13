# Sample Application

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Deploy to AWS
Install [JQ](https://stedolan.github.io/jq/) to enable JSON parsing that is used
to get results between AWS commands.

In Debian and Ubuntu distributions
```sh
sudo apt-get install jq
```

Source the AWS commands
```sh
source ./scripts/iam/commands.sh
```

### Create
aws_up
### Destroy
aws_down

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
