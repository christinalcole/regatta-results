class RegattaResults::CLI

  def call
    puts "test statement for 2016 regattas:"
    list_races
    division_menu
    goodbye
  end

  def list_races
    puts <<-doc
    1. Jan. 1	Hangover Bowl
    2. Jan 31 - Mar 20	Frostbite - Second Half
    3. April 23	Spring One Design Regatta
    4. April 27 - June 1	WNR Series 1
    5. May 14	Spring Harbor Regatta
    doc
  end

  def division_menu
    input = nil
    while input != "exit"
      puts "Each regatta scores multiple divisions/handicaps.  Enter the number of the regatta for which you'd like division/handicap details:"
      input = gets.strip

      case input
      when "1"
        puts "There were 99 entries: Cal 25 - Harbor 20 - J/105 - J/22 - J/70 - J/80 - PHRF 1 - PHRF 2 - PHRF 3"
        division_finish
      when "2"
        puts "there were 96 entries: Cal 25 - Harbor 20 - J/105 - J/22 - J/70 - J/80 - PHRF 1 - PHRF 2 - PHRF 3"
        division_finish
      when "3"
        puts "here's more about regatta 3"
        division_finish
      when "4"
        puts "here's more about regatta 4"
        division_finish
      when "5"
        puts "here's more about regatta 5"
        division_finish
      end
    end

  end

  def division_finish
    finish_input = nil
    while finish_input != "exit"
      puts "Select a division/handicap for the list of scored races:"
      finish_input = gets.strip

      case finish_input
      when "PHRF 1"
        puts "here's the PHRF 1 results"
        race_results
      when "PHRF 2"
        puts "here's the PHRF 2 results"
        race_results
      when "PHRF 3"
        puts "here's the PHRF 3 results"
        race_results
      end
    end
  end

    def race_results
      race_input = nil
      while race_input != "exit"
        puts "Select a series (e.g., 1, 2, 3) for finish order, finish time, correction, etc.:"
        race_input = gets.strip

        case race_input
        when "1"
          puts "Race 1 results..."
        when "2"
          puts "Race 2 results..."
        when "3"
          puts "Race 3 results..."
        end
      end
    end

    def goodbye
      puts "See you next race!"
    end

  # each series has: name, division(s), date/time scored, number_of_races scored, overall_standing, url, boat_list
  # each race has: name(number), divisions(s) (** are divisions needed at race level?...), date/time scored, url, boat_list
  # OPTION: each boat has: overall_standing in series, finish time in race



end
