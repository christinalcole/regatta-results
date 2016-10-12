class RegattaResults::CLI

  def call
    puts "test statement for 2016 regattas:"
    list_regattas
    division_menu
    goodbye
  end

  def list_regattas
    @regattas = RegattaResults::Regatta.year

    @regattas.each.with_index(1) do |regatta, i|
      puts "#{i}. #{regatta.name}"
    end

  end

  def division_menu
    input = nil
    while input != "exit"
      puts "Each regatta scores multiple divisions/handicaps.  Enter the number of the regatta for which you'd like division/handicap details:"
      input = gets.strip

      if input.to_i > 0

        puts "These divisions were scored: #{@regattas[input.to_i - 1].divisions}"
        division_finish
      else ## ** logic needs to be corrected here...UI is still opaque/loop seems to run an extra time
        puts "Not sure what you mean, enter a regatta number or exit"
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

end
