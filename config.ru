require 'bundler'
Bundler.require

require './app'
run Sinatra::Application
$stdout.sync = true
