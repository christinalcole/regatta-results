class RegattaResults::CLI

  def call
    puts "The 2016 WNR Series, PHRF 1:"
    list_series # first-level data: user selects WNR series
    menu
    #list_boats # second-level view: user selects boat
    #boat_details # detailed view: user sees boat's overall standings for series
    #goodbye
  end

  def menu
    input = nil

    until input == "exit"
      puts "Enter the number of the series for which you'd like to see a list of PHRF 1 entries, 'list' to see 2016 series, or 'exit' to quit:"

      input = gets.strip.downcase

      case input
      when "1"
        puts "Here are the Series 1 boats"
        list_boats
      when "2"
        puts "Here are the Series 2 boats"
        list_boats
      when "3"
        puts "Here are the Series 3 boats"
        list_boats
      when "list"
        list_series
      when "exit"
        goodbye
      else
        puts "Invalid"
      end
    end
  end

  def list_series
    puts <<-DOC
    1. April 27 - June 1	WNR Series 1
    2.  June 8 - July 20	WNR Series 2
    3.  July 27 - Aug 31	WNR Series 3
    DOC
  end

  def list_boats
    input = nil
    while input != "exit"

      make_boats
      display_boats
      puts "These boats raced under PHRF 1.  Enter the boat's number to see its overall standings in the series:"

        input = gets.strip.downcase

        case input #needs an invalid-entry case?
        when "1"
          puts "Xiberger's standings"
        when "2"
          puts "Wanda's standings"
        when "3"
          puts "This boat's standings"
        when "4"
          puts "That boat's standings"
        when "5"
          puts "more on boat 5"
        when "6"
          puts "and here's boat 6"
        when "7"
          puts "boat number 7..."
        when "8"
          puts "boat 8..."
        when "9"
          puts "last one, boat 9"
        when "list"
          list_boats
        end
    end
  end

  def make_boats
    boat_array = RegattaResults::Scraper.scrape_boat_list
    RegattaResults::Boat.create_from_collection(boat_array)
  end

  def display_boats
    RegattaResults::Boat.all.each.with_index(1) do |boat, index|
      puts "#{index}. #{boat.sail_number} - #{boat.name}"
    end
  end


  def goodbye
    puts "See you next race!"
  end

end
