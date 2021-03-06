class Guest
    attr_reader :name
    
    @@all_guests = []

    def initialize(name)
        @name = name
        @@all_guests << self
    end

    def listings
        self.trips.collect do |trip|
            trip.listing
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all_guests
    end
    
    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end
    
    def self.find_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end