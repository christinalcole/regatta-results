class RegattaResults::CLI

  def call
    puts "test statement for 2016 regattas:"
    list_races
    division_menu
    #pick division/handicap for finish times, then list division/handicap finish times
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
      when "2"
        puts "there were 96 entries: Cal 25 - Harbor 20 - J/105 - J/22 - J/70 - J/80 - PHRF 1 - PHRF 2 - PHRF 3"
      when "3"
        puts "here's more about regatta 3"
      when "4"
        puts "here's more about regatta 4"
      when "5"
        puts "here's more about regatta 5"
      end
    end

  end

  def division_finish
  end

  # each series has: name, division(s), date/time scored, number_of_races scored, overall_standing, url, boat_list
  # each race has: name(number), divisions(s) (** are divisions needed at race level?...), date/time scored, url, boat_list
  # OPTION: each boat has: overall_standing in series, finish time in race

end
