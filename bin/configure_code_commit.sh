#!/usr/bin/env bash
mkdir /app/.ssh

# create public and private keys from env vars
echo "$CODE_COMMIT_PUBLIC_KEY" > /app/.ssh/codecommit_rsa.pub
echo "$CODE_COMMIT_PRIVATE_KEY" > /app/.ssh/codecommit_rsa

# configure the user when using CodeCommit
cat >> /app/.ssh/config << EOF
Host git-codecommit.*.amazonaws.com
  User $CODE_COMMIT_SSH_KEY_ID
  IdentityFile /app/.ssh/codecommit_rsa
EOF

# add amazonaws to known hosts
ssh-keygen -R git-codecommit.us-east-1.amazonaws.com
ssh-keyscan -H git-codecommit.us-east-1.amazonaws.com >> /app/.ssh/known_hosts
