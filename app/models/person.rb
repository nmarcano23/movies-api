# frozen_string_literal: true

# peoples model
class Person < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :person_movies
  has_many :movies, through: :person_movies
  enum gender: %i[male female]

  def movies_as_actor
    movies.merge(PersonMovie.casting)
  end

  def movies_as_director
    movies.merge(PersonMovie.directors)
  end

  def movies_as_producer
    movies.merge(PersonMovie.producers)
  end
end
