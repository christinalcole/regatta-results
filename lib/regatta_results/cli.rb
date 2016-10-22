class RegattaResults::CLI

  def call
    puts "The 2016 WNR Series, PHRF 1:"
    list_series # first-level data: user selects WNR series
    list_boats # second-level view: user selects boat
    boat_details # detailed view: user sees boat's overall standings for series
    goodbye
  end
``
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
      puts "These boats raced in PHRF 1.  Enter the boat's number to see its overall standings in the series:"
      input = gets.strip
    puts <<-DOC
      1. Xiberger
      2. Wanda
      3. Qa2
      4. Monkey Dust
      5. Gratitude
      6. Hall Pass
      7. Capricorne
      8. MI2
      9. Serenity
      DOC
    # @regattas = RegattaResults::Regatta.year
    #
    # @regattas.each.with_index(1) do |regatta, i|
    #   puts "#{i}. #{regatta.name}"
    # end
    end

  end

  # def division_menu
  #   input = nil
  #   while input != "exit"
  #     puts "These boats raced in PHRF 1.  Enter the boat's number to see its overall standings in the series:"
  #     input = gets.strip
  #
  #     if input.to_i > 0
  #
  #       puts "These divisions were scored: #{@regattas[input.to_i - 1].divisions}"
  #       #division_finish
  #     else ## ** logic needs to be corrected here...UI is still opaque/loop seems to run an extra time
  #       puts "Not sure what you mean, enter a regatta number or exit"
  #     end
  #   end
  #
  # end

  # def division_finish
  #   finish_input = nil
  #   while finish_input != "exit"
  #     puts "Select a division/handicap for the list of scored races:"
  #     finish_input = gets.strip
  #
  #     case finish_input
  #     when "PHRF 1"
  #       puts "here's the PHRF 1 results"
  #       race_results
  #     when "PHRF 2"
  #       puts "here's the PHRF 2 results"
  #       race_results
  #     when "PHRF 3"
  #       puts "here's the PHRF 3 results"
  #       race_results
  #     end
  #   end
  # end

    # def race_results
    #   race_input = nil
    #   while race_input != "exit"
    #     puts "Select a series (e.g., 1, 2, 3) for finish order, finish time, correction, etc.:"
    #     race_input = gets.strip
    #
    #     case race_input
    #     when "1"
    #       puts "Race 1 results..."
    #     when "2"
    #       puts "Race 2 results..."
    #     when "3"
    #       puts "Race 3 results..."
    #     end
    #   end
    # end

    def goodbye
      puts "See you next race!"
    end

end
