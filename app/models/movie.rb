class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([]) { |a, x| a.push x.rating }
    end
end
