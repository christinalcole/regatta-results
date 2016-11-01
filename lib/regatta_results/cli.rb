class RegattaResults::CLI

  def call
    puts "Here are the 2016 AYC Wednesday Night Race Series:".colorize(:light_yellow)
    list_series
    menu
  end

  def list_series
    puts <<-DOC
    1. April 27 - June 1	WNR Series 1
    2. June 8 - July 20	  WNR Series 2
    3. July 27 - Aug 31	  WNR Series 3
    DOC
  end

  def menu
    input = nil

    until input == "exit"

      puts "Enter the number of the series for which you'd like to see a list of entries, 'list' to repeat the series list, or 'exit':".colorize(:light_yellow)
      input = gets.strip.downcase

      case input
      when "1"
        RegattaResults::Boat.empty
        make_boats("http://www.annapolisyc.com/files/2016WNRSeries1.html")
        detailed_view
        input = nil
        until input == "n"
          puts "\nWould you like to see details for another boat in this series? (y/n)".colorize(:light_yellow)
          input = gets.strip.downcase

          if input == "y"
            detailed_view
          elsif input != "n"
            puts "Hmmm...not sure what you mean; enter 'y' or 'n':".colorize(:light_red)
          end
        end
      when "2"
        RegattaResults::Boat.empty
        make_boats("http://www.annapolisyc.com/files/2016WNRSeries2_751.html")
        detailed_view
        input = nil
        until input == "n"
          puts "\nWould you like to see details for another boat in this series? (y/n)".colorize(:light_yellow)
          input = gets.strip.downcase

          if input == "y"
            detailed_view
          elsif input !="n"
            puts "Hmmm...not sure what you mean; enter 'y' or 'n':".colorize(:light_red)
          end
        end
      when "3"
        RegattaResults::Boat.empty
        make_boats("http://www.annapolisyc.com/files/2016WNRSeries3_751.html")
        detailed_view_series_3
        input = nil
        until input == "n"
          puts "\nWould you like to see details for another boat in this series? (y/n)".colorize(:light_yellow)

          input = gets.strip.downcase

          if input == "y"
            detailed_view_series_3
          elsif input !="n"
            puts "Hmmm...not sure what you mean; enter 'y' or 'n':".colorize(:light_red)
          end
        end
      when "list"
        list_series
      when "exit"
        goodbye
      else
        puts "Hmmm...not sure what you mean: choose a series number, 'list,' or 'exit':".colorize(:light_red)
      end
    end
  end

  def make_boats(series_url)
    boat_array = RegattaResults::Scraper.scrape_boat_list(series_url)
    RegattaResults::Boat.create_from_collection(boat_array)
  end

  def detailed_view
    puts "#{RegattaResults::Boat.all.length} boats raced in this series in the following handicaps:".colorize(:light_cyan)
    puts " 1. Alberg 30 (6 boats) \t\t 8. J/35 (5 boats)\n 2. Etchells (15) \t\t\t 9. J/70 (7)\n 3. Farr 30 (5) \t\t\t 10.J/80 (8)\n 4. Harbor 20 (20) \t\t\t 11.PHRF 0 (11)\n 5. Herrschoff 12.5 (6) \t\t 12.PHRF 1 (9)\n 6. J/105 (16) \t\t\t\t 13.PHRF 2 (4)\n 7. J/30 (10) \t\t\t\t 14.PHRF 3 (10)"
    puts "\nEnter the number of the handicap of interest:".colorize(:light_cyan)

    range = gets.strip.to_i
    display_boats(range)

    puts "\nEnter the row number of the boat for which you'd like to see more information".colorize(:light_yellow)
    input = gets.strip.to_i
    display_the_boat(input)
  end

  def detailed_view_series_3
    puts "#{RegattaResults::Boat.all.length} boats raced in this series in the following handicaps:".colorize(:light_cyan)
    puts " 1. Alberg 30 (6 boats) \t\t 8. J/35 (5 boats)\n 2. Etchells (15) \t\t\t 9. J/70 (7)\n 3. Farr 30 (5) \t\t\t 10.J/80 (8)\n 4. Harbor 20 (20) \t\t\t 11.PHRF 0 (12)\n 5. Herrschoff 12.5 (6) \t\t 12.PHRF 1 (10)\n 6. J/105 (16) \t\t\t\t 13.PHRF 2 (4)\n 7. J/30 (11) \t\t\t\t 14.PHRF 3 (10)"
    puts "\nEnter the number of the handicap of interest:".colorize(:light_cyan)

    range = gets.strip.to_i
    display_boats_series_3(range)

    puts "\nEnter the row number of the boat for which you'd like to see more information".colorize(:light_yellow)
    input = gets.strip.to_i
    display_the_boat(input)
  end

  def display_boats(range)
    case range
    when 1
      RegattaResults::Boat.all[0,6].each.with_index(1) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 2
      RegattaResults::Boat.all[6,15].each.with_index(7) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 3
      RegattaResults::Boat.all[21,5].each.with_index(22) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 4
      RegattaResults::Boat.all[26,20].each.with_index(27) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 5
      RegattaResults::Boat.all[46,6].each.with_index(47) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 6
      RegattaResults::Boat.all[52,16].each.with_index(53) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 7
      RegattaResults::Boat.all[68,10].each.with_index(69) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 8
      RegattaResults::Boat.all[78,5].each.with_index(79) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 9
      RegattaResults::Boat.all[83,7].each.with_index(84) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 10
      RegattaResults::Boat.all[90,8].each.with_index(91) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 11
      RegattaResults::Boat.all[98,11].each.with_index(99) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 12
      RegattaResults::Boat.all[109,9].each.with_index(110) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 13
      RegattaResults::Boat.all[118,4].each.with_index(119) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 14
      RegattaResults::Boat.all[122,10].each.with_index(123) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    end
  end

  def display_boats_series_3(range)
    case range
    when 1
      RegattaResults::Boat.all[0,6].each.with_index(1) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 2
      RegattaResults::Boat.all[6,15].each.with_index(7) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 3
      RegattaResults::Boat.all[21,5].each.with_index(22) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 4
      RegattaResults::Boat.all[26,20].each.with_index(27) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 5
      RegattaResults::Boat.all[46,6].each.with_index(47) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 6
      RegattaResults::Boat.all[52,16].each.with_index(53) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 7
      RegattaResults::Boat.all[68,11].each.with_index(69) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 8
      RegattaResults::Boat.all[79,5].each.with_index(80) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 9
      RegattaResults::Boat.all[84,7].each.with_index(85) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 10
      RegattaResults::Boat.all[91,8].each.with_index(92) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 11
      RegattaResults::Boat.all[99,12].each.with_index(100) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 12
      RegattaResults::Boat.all[111,10].each.with_index(112) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 13
      RegattaResults::Boat.all[121,4].each.with_index(122) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    when 14
      RegattaResults::Boat.all[125,10].each.with_index(126) do |boat, index|
        puts "#{index}. #{boat.sail_number} - #{boat.name}"
      end
    end
  end

  def display_the_boat(index)
    boat = RegattaResults::Boat.all[index-1]
    puts "---------Series info for Sail Number #{boat.sail_number}---------".colorize(:light_red)
    puts ""
    puts "Hull name:".colorize(:light_yellow) + " #{boat.name}"
    puts "Skipper:".colorize(:light_yellow) + " #{boat.skipper}"
    puts "Series overall standing within class:".colorize(:light_yellow) + " #{boat.series_standing}"
    puts "Series points (LowPoint, AYC Wed Penalties):".colorize(:light_yellow) + " #{boat.series_points}"
    puts "Series finishes (bracketed finish indicates dropped race):".colorize(:light_yellow)
    puts "\t race 1 -".colorize(:yellow) + " #{boat.series_finishes[0]}"
    puts "\t race 2 -".colorize(:yellow) + " #{boat.series_finishes[1]}"
    puts "\t race 3 -".colorize(:yellow) + " #{boat.series_finishes[2]}"
    puts "\t race 4 -".colorize(:yellow) + " #{boat.series_finishes[3]}"
    if !boat.series_finishes[4].nil?
      puts "\t race 5 -".colorize(:yellow) + " #{boat.series_finishes[4]}"
    else
      puts "\t race 5 - (no race 5 in this series)".colorize(:light_black)
    end
    if !boat.series_finishes[5].nil?
      puts "\t race 6 -".colorize(:yellow) + " #{boat.series_finishes[5]}"
    else
      puts "\t race 6 - (no race 6 in this series)".colorize(:light_black)
    end
  end

  def goodbye
    puts "See you next race!"
  end

end
