class RegattaResults::Scraper

  # objectives:
  # 1. scrape WNR URL (one URL per series)
  # 2. Instantiate a Regatta object for each series
  # 3. Scrape the boats that raced in that series
  # 4. Scrape individual boats/instantiate Boat objects for that series, add them to the Regatta instance

  def self.scrape_boat_list
    boat_list = []
    boat_hash = {}

    list_html = open("http://www.annapolisyc.com/files/2016WNRSeries1.html")

    doc = Nokogiri::HTML(list_html)

    doc.css("tbody tr").each do |row|
      boat_hash = {
        :name => row.children[5].text,
        :sail_number => row.children[3].text,
        :skipper => row.children[7].text,
        :series_standing => row.children[1].text,
        :series_points => row.children[19].text
      }

      #boat_name = row.children[5].text
      # if boat_name == "\u00A0"
      #   boat_name = "(no boat name listed)"
      # end
      #boat_list << boat_name

      boat_list << boat_hash
    end

    binding.pry
    boat_list



# division name: doc.css("p.divisionheader a").attribute("name").children[0].text
# sail number: doc.css("tbody tr").children[3].text
# boat name: doc.css("tbody tr").children[5].text  ** NEED THIS FOR LIST VIEW **
# skipper: doc.css("tbody tr").children[7].text
# series_standing: doc.css("tbody tr").children[1].text
# series_finishes: race 1, " .children[9].text  race 2, ".children[11].text, 3 = [13], 4 = [15], 5 = [17]
# series_points: doc.css("tbody tr".children[19].text

# race notes: doc.css("table.footnotes td")[5..-1].children[0].text, children[2].text (first 2 notes)


  end
end
