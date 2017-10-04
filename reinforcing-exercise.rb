class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end


class Trip

  @@destinations = []

  def initialize(start_location)
    start = Location.new(start_location)
    @@destinations << start
  end

  def self.stops
    @@destinations
  end

  def add_new_stop(name)
    stop_new = Location.new(name)
    @@destinations << stop_new
    stop_new
  end

  def self.start
    puts "Begin trip"
    @@destinations.each_with_index do |stop, i|
      puts "Travelled from #{stop.name} to #{stop.name}."
    end
    puts "Ended Trip"
  end
end

trip = Trip.new("Toronto")
trip.add_new_stop("Ottawa")
trip.add_new_stop("Montreal")
trip.add_new_stop("Quebec City")
trip.add_new_stop("Halifax")
trip.add_new_stop("St. John's")
puts Trip.stops.inspect

Trip.start
