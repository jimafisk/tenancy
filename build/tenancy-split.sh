#!/usr/bin/env bash

git subsplit init git@github.com:tenancy/framework.git

# Tenancy.
git subsplit publish --heads="master" src/Tenancy:git@github.com:tenancy/tenancy.git

# Identification drivers
git subsplit publish --heads="master" src/Identification/Environment:git@github.com:tenancy/identification-driver-environment.git
git subsplit publish --heads="master" src/Identification/Http:git@github.com:tenancy/identification-driver-http.git

# Database drivers
git subsplit publish --heads="master" src/Database/Mysql:git@github.com:tenancy/db-driver-mysql.git

rm -rf .subsplit/
