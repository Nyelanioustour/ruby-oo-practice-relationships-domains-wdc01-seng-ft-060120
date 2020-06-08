class Listing
    attr_accessor :city
    @@all_listings = []

    def initialize(city)
        @city = city
        @@all_listings << self
    end

    def guests
        self.trips.map do |trips|
            trips.guest 
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all_listings
    end

    def self.all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end
    
    def self.most_popular
        trip_count = 0

        self.all.each do |listing|
            if listing.trip_count > trip_count
                trip_count = listing.trip_count
            end
        end

        self.all.select do |listing|
            listing.trip_count == trip_count
        end
    end
end