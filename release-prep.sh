#!/usr/bin/env bash

# The container tag should closely match what is used in `docker/Dockerfile` in vmpooler-deployment
#
# Update Gemfile.lock
docker run -t --rm \
  -v $(pwd):/app \
  jruby:9.4.3.0-jdk11 \
  /bin/bash -c 'apt-get update -qq && apt-get install -y --no-install-recommends git make netbase && cd /app && gem install bundler && bundle install --jobs 3; echo "LOCK_FILE_UPDATE_EXIT_CODE=$?"'

# Update Changelog
docker run -t --rm -e CHANGELOG_GITHUB_TOKEN -v $(pwd):/usr/local/src/your-app \
  githubchangeloggenerator/github-changelog-generator:1.16.2 \
  github_changelog_generator --future-release $(grep VERSION lib/vmpooler-provider-pve/version.rb |rev |cut -d "'" -f2 |rev)
