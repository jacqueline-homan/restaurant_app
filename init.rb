## Food Finder ##
#
# Launch this Ruby file from the terminal
# to get started.
# The lib folder is where we want Ruby to look
# for all the files we'll need.

# Assigns the current directory of this file
# to APP-ROOT
APP_ROOT = File.dirname(__FILE__)

## Here is the app's absolute path, so anything
# after that, that is relative to it, will 
# be an absolute path, too.

# require "#{APP_ROOT}/lib/guide" 

# There are better ways of writing the absolute path, 
# that use the separators based on the user's OS:

# require File.join(APP_ROOT, 'lib', 'guide.rb')
# require File.join(APP_ROOT, 'lib', 'guide')


$: .unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

guide = Guide.new('restaurants.txt')
guide.launch!