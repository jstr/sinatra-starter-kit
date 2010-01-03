# Inspired by http://github.com/tannerburson/multi-sinatra-sample/blob/master/config.ru

require 'rubygems'
 
# include our Application code
require File.join(File.dirname(__FILE__), 'app.rb')
 
# We have to set any options on the class objects themselves
# In this case we want to set both to dev mode.
[App::Main].each do |controller|
	controller.set :environment, :development
end

# Mount our Main class with a base url of /
map "/" do
	run App::Main
end

