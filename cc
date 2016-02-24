#! /bin/sh

cd `dirname $0`

var_name = "var-ruby-executer"

ruby rb-executer.rb $var_name
eval "\$$var_name"
