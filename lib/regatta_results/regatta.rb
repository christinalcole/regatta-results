class RegattaResults::Regatta

  attr_accessor :name, :url, :divisions, :race

  def self.year
    # ultimately returns instances of Regatta as a list of regattas held in the year
    # puts <<-doc
    # 1. Jan. 1	Hangover Bowl
    # 2. Jan 31 - Mar 20	Frostbite - Second Half
    # 3. April 23	Spring One Design Regatta
    # 4. April 27 - June 1	WNR Series 1
    # 5. May 14	Spring Harbor Regatta
    # doc

    regatta_1 = self.new
    regatta_1.name = "Jan. 1	Hangover Bowl"
    regatta_1.url = "http://www.annapolisyc.com/files/2016%20Hangover%20Bowl.html"
    regatta_1.divisions = "Cal 25 - Harbor 20 - J/105 - J/22 - J/70 - J/80 - PHRF 1 - PHRF 2 - PHRF 3"
    regatta_1.race = "1"

    regatta_2 = self.new
    regatta_2.name = "Jan 31 - Mar 20	Frostbite - Second Half"
    regatta_2.url = "http://www.annapolisyc.com/files/20152016FrostbiteSeriesSecondHalf.html"
    regatta_2.divisions = "Cal 25 - Harbor 20 - J/105 - J/22 - J/70 - J/80 - PHRF 1 - PHRF 2 - PHRF 3"
    regatta_2.race = "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"

    regatta_3 = self.new
    regatta_3.name = "April 23	Spring One Design Regatta"
    regatta_3.url = "http://www.annapolisyc.com/files/2016SpringOneDesignRegatta.html"
    regatta_3.divisions = "regatta 3 divisions list"
    regatta_3.race = "1, 2, 3, 4"

    regatta_4 = self.new
    regatta_4.name = "4. April 27 - June 1	WNR Series 1"
    regatta_4.url = "http://www.annapolisyc.com/files/2016WNRSeries1.html"
    regatta_4.divisions = "regatta 4 divisions list..."
    regatta_4.race = "1, 2, 3, 4, 5"

    regatta_5 = self.new
    regatta_5.name = "May 14	Spring Harbor Regatta"
    regatta_5.url = "http://www.annapolisyc.com/files/2016SpringHarborRegatta.html"
    regatta_5.divisions = "regatta 5 divisions/handicap list..."
    regatta_5.race = "1, 2, 3"

    #return array of regattas
    [regatta_1, regatta_2, regatta_3, regatta_4, regatta_5]
  end

end
