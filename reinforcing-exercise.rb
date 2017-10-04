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
      if @@destinations[i+1] == nil
        puts "Ended Trip"
      else
      puts "Travelled from #{stop.name} to #{@@destinations[i+1].name}."
    end
    end
  end
end

trip = Trip.new("Toronto")
trip.add_new_stop("Ottawa")
trip.add_new_stop("Montreal")
trip.add_new_stop("Quebec City")
trip.add_new_stop("Halifax")
trip.add_new_stop("St. John's")

Trip.start
