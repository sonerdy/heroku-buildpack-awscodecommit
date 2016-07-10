Heroku buildpack: AWS Codecommit
================================

This is a buildpack for AWS CodeCommit.
It's useful if you need git access to CodeCommit from your Heroku server.

http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-ssh-unixes.html#setting-up-ssh-unixes-keys

Usage
-----

Example usage:

    $ heroku config:add BUILDPACK_URL=https://github.com/sonerdy/heroku-buildpack-awscodecommit.git

    $ heroku config:add CODE_COMMIT_PUBLIC_KEY=<public-key>

    $ heroku config:add CODE_COMMIT_PRIVATE_KEY=<private-key>

    $ heroku config:add CODE_COMMIT_SSH_KEY_ID=<ssh-key-id>
