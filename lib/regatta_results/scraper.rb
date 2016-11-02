class RegattaResults::Scraper

  def self.scrape_boat_list(series_url)
    boat_list = []
    boat_hash = {}

    list_html = open(series_url)

    doc = Nokogiri::HTML(list_html)

    doc.css("tbody tr").each do |row|
      boat_hash = {
        :name => row.children[5].text,
        :sail_number => row.children[3].text,
        :skipper => row.children[7].text,
        :series_standing => row.children[1].text,
        :series_points => row.children[19].text
      }

      if series_url.include?("Series1")
        boat_hash[:series_finishes] = [row.children[9].text, row.children[11].text, row.children[13].text, row.children[15].text, row.children[17].text]
      elsif series_url.include?("Series2")
        boat_hash[:series_finishes] = [row.children[9].text, row.children[11].text, row.children[13].text, row.children[15].text]
      elsif series_url.include?("Series3")
        boat_hash[:series_finishes] = [row.children[9].text, row.children[11].text, row.children[13].text, row.children[15].text, row.children[17].text, row.children[19].text]
        boat_hash[:series_points] = row.children[21].text
        #binding.pry
      end

      boat_list << boat_hash
    end

    boat_list
  end
end
