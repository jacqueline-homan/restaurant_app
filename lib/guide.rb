require 'restaurant'

class Guide
  def initialize(path=nil) 
  	# Locate the restaurant text file at that path
    Restaurant.filepath = path
  	  if Restaurant.file_usable?
  	    puts "Found restaurant file" 
  	  # or create a new file
      elsif Restaurant.create_file
        puts "Created restaurant file"
  	  # exit if file create fails
      else
        puts "Exiting. \n\n"
        exit!
    end
  end

  #def launch!
  	# intro #( welcome to the app, etc)
  	# action loop
    #loop do 
  	  # what do you want to do? (list, find, add, quit)
    #  print "(Enter response or type q to exit)> "
    #  user_response = gets.chomp
      
      # do that action
    #  result = do_action(user_response) 
  	  # repeat until user quits
      #break if user_response == "q"
    #  break if result == :quit
    #end
    #conclusion
  #end

  # Refactored the loop code block in def launch!
  def launch!
     intro #( welcome to the app, etc)
    # action loop
    result = nil
    until result == :quit 
      # what do you want to do? (list, find, add, quit)
      print "(Enter response or type q to exit)> "
      user_response = gets.chomp      
      # do that action
      result = do_action(user_response)      
    end
    conclusion
  end


  def do_action(action)
    case action
    when 'list'
      puts "Listing..."
    when 'find'
      puts "Finding..."
    when 'add'
      puts "Adding..."
    when 'q'
      return :quit
    else
      puts "\nI don't understand that command.\n"
    end
  end

  def intro
  	puts "\n\n<<<< Welcome to the Food Finder >>>>\n\n"
  	puts "This is an interactive guide to help you find the food you crave. \n\n"
  end

  def conclusion
  	puts "\n<<<< Goodbye and Bon Apetite! >>>>\n\n\n"
  end
end