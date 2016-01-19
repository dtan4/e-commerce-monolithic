#!/bin/bash

bin/rake db:create
bin/rake db:schema:load

exec $@
