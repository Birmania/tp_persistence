require 'active_record'
require_relative 'lib/person'

config_file = File.join(File.dirname(__FILE__),"config","database.yml")

puts "fichier database.yml " + YAML.load(File.open(config_file)).inspect

configuration = YAML.load(File.open(config_file))["development"]
current_directory = File.expand_path File.dirname(__FILE__)

configuration["database"] = File.join current_directory, configuration["database"]
ActiveRecord::Base.establish_connection(configuration)


