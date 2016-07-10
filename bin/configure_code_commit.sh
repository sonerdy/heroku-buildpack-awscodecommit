#!/usr/bin/env bash
mkdir /app/.ssh

echo "$CODE_COMMIT_PUBLIC_KEY" > /app/.ssh/codecommit_rsa.pub
echo "$CODE_COMMIT_PRIVATE_KEY" > /app/.ssh/codecommit_rsa
cat >> /app/.ssh/config << EOF
Host git-codecommit.*.amazonaws.com
  User $CODE_COMMIT_SSH_KEY_ID
  IdentityFile /app/.ssh/codecommit_rsa
EOF
