#! /bin/sh

cd `dirname $0`

var_name = "var-command-clipper-exec-command"

ruby command-clipper.rb $var_name
eval "\$$var_name"
