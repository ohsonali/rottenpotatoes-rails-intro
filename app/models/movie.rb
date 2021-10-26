class Movie < ActiveRecord::Base
  def all_ratings
    return ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list)
    if ratings_list == nil
      return Movie.all()
    end
      return Movie.where(ratings: ratings_list)
  end
end
