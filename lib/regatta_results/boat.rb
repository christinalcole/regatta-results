class RegattaResults::Boat

  attr_accessor :name, :sail_number, :skipper, :series_standing, :series_finishes, :series_points

  @@all = []

  def initialize(boat_hash)
    boat_hash.each {|attribute, value| self.send("#{attribute}=", value)}
    @@all << self
  end

  def self.create_from_collection(boat_array)
    boat_array.each do |boat|
      self.new(boat)
    end
  end

  def self.all
    @@all
  end

  #general model for a boat object

  # boat_1 = self.new
  # boat_1.name = "Xiberger"
  # boat_1.sail_number = "52038"
  # boat_1.skipper = "White/Mangold, William/Harald"
  # boat_1.series_standing = "1"
  # boat_1.series_finishes = {race_1: 1, race_2: [4], race_3: 1, race_4: 1, race_5: 1}
  # boat_1.series_points = "4" #points equal sum of series_finishes values, less tossed race []
  #
  # boat_2 = self.new
  # boat_2.name = "Wanda"
  # boat_2.sail_number = "93239"
  # boat_2.skipper = "Jensen, Christian"
  # boat_2.series_standing = "1"
  # boat_2.series_finishes = {race_1: 2, race_2: [7], race_3: 2, race_4: 3, race_5: 3}
  # boat_2.series_points = "10"

end
