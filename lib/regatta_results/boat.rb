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

  def self.empty
    if @@all.length != 0
      @@all.clear
    end
  end
end
