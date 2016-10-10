class RegattaResults::CLI

  def call
    puts "test statement for 2016 regattas:"
    list_races
    #pick race for division/handicap details, then list division/handicap details
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

  end

  def division_finish
  end

  # each series has: name, division(s), date/time scored, number_of_races scored, overall_standing, url, boat_list
  # each race has: name(number), divisions(s) (** are divisions needed at race level?...), date/time scored, url, boat_list
  # OPTION: each boat has: overall_standing in series, finish time in race

end
