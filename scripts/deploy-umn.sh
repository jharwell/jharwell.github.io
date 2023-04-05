#!/bin/bash

set -x

rm -rf resources/ public
hugo --environment production --minify --baseURL https://www-users.cse.umn.edu/~harwe006

module load umn

chmod -R 755 public/ # Not set by default on UMN machines apparently

# Delete all files on the UMN machine under ~/.www that don't
# currently exist here--they are a result of updates in hugo.
rsync -avh public/ -e ssh harwe006@csel-kh1250-03.cselabs.umn.edu:.www/ --delete
