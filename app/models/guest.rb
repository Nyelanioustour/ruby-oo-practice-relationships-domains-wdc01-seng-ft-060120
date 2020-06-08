class Guest
    attr_accessor :name
    @@all_guests = []

    def initialize(name)
        @name = name
        @@all_guests << self
    end

end