#! /bin/sh

cd `dirname $0`

var_name="command_clipper_exec_command"

ruby command-clipper.rb $var_name
eval "sh .cmd.tmp"
