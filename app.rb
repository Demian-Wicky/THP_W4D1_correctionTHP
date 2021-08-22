require 'bundler'
require 'time'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/workevent'

####### SEED ####### ####### ####### ####### ####### ####### ####### 
demian = User.new("dmn@gmail.com", 29)
julie = User.new("julie@aol.com", 23)
jean = User.new("jean@maimail.com", 22)
marion = User.new("marion@hotmail.com", 25)
mrtruc = User.new("truc@machin.com.com", 99)
mrbidule = User.new("bidule@chose.fr", 99)

event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean]) #et je les insère tous les deux dans un nouvel Event
meeting = WorkEvent.new("2019-01-17 09:00", 70, "réunion de travail", [julie, jean], "Mulhouse") # je crée un WorkEvent
birthday = Event.new("2019-02-22 11:00", 70, "anniversaire", [julie, jean])
####### END OF SEED  ####### ####### ####### ####### ####### #######

my_event.age_analysis #j'exécute la nouvelle méthode que j'ai écrite

binding.pry
puts "end of file "