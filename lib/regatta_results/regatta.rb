class RegattaResults::Regatta

  attr_accessor :name, :url

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

    regatta_2 = self.new
    regatta_2.name = "Jan 31 - Mar 20	Frostbite - Second Half"
    regatta_2.url = "http://www.annapolisyc.com/files/20152016FrostbiteSeriesSecondHalf.html"

    regatta_3 = self.new
    regatta_3.name = "April 23	Spring One Design Regatta"
    regatta_3.url = "http://www.annapolisyc.com/files/2016SpringOneDesignRegatta.html"

    regatta_4 = self.new
    regatta_4.name = "4. April 27 - June 1	WNR Series 1"
    regatta_4.url = "http://www.annapolisyc.com/files/2016WNRSeries1.html"

    regatta_5 = self.new
    regatta_5.name = "May 14	Spring Harbor Regatta"
    regatta_5.url = "http://www.annapolisyc.com/files/2016SpringHarborRegatta.html"

    #return array of regattas
    [regatta_1, regatta_2, regatta_3, regatta_4, regatta_5]
  end

end
