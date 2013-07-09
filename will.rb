#!/bin/env ruby

require 'colorize'

system("clear")
puts "Hello world."
sleep 1
puts "what is your name?"
name = gets
name = name.strip + "o"
puts "are you shure? please enter your name again"
confirm = gets
confirm = confirm.strip + "o"
if name==confirm
  puts "hello, " + name
	sleep 0.5
	puts "you are in a bunker with only a pocketknife, you must escape in 24 hours or you will be blown up"
	sleep 0.5
	puts "\nplease enter codename"
	codename = gets.strip
	puts "you see doors on the east and south walls. there is a window, but it is to high to get out of"
	puts "what do you do?"
	stuckinroom = true
	while stuckinroom
		command = gets.strip.downcase
		case command
		when "south", "go south"
			puts "you only find a box of matches. you return to the main room" 
			sleep 0.5
			puts "type look to look around again"
		when "east", "go east"
			puts "you go through the east door, but find a pile of rocks, to heavy to move. you return to the main room"
			sleep 0.5
			puts "type look to look around again"
		when "look", "look around"
			puts "where do you look, by the doors, or near the window"
			puts "well, doors or window? chop chop!"
		when "windows", "window"
			puts "you find a crack in the morter"
			puts "what do you do?"
			puts "hint; use your knife"
		when "knife"
			puts "you find a fuse, it leads to dynamite. do you try to use it on the rocks in the east room? hint, type 'dynamite'"
		when "dynamite"
			puts "BOOM!!".red + " the rocks are gone and you find a trapdoor, you take it, and you are free! as you sprint away, you hear the bunker exploding. if you had been in there a second longer... "
			stuckinroom = false
		when "doors", "door"
			puts "you find nothing"
		when "north", "go north"
			puts "dunderhead! that is a WALL".red
		when "west", "go west"
			puts "dunderhead! that is a WALL".red
		else
			puts "you must list the directon you wish to go. north, east, south or west (or some other super secret commands...)"
		end
	end
	puts "You win!".green
else
	puts "you had better check your birth certifacate, bub"
	sleep 0.5
	puts "\nacccess denied"
end



