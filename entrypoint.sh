#!/bin/bash

bin/rake db:create
bin/rake db:schema:load

bin/rake assets:precompile

SECRET_KEY_BASE=$(bin/rake secret) exec $@
