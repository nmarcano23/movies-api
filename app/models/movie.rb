# frozen_string_literal: true

# Movies model
class Movie < ApplicationRecord
  validates :title, :release_year, presence: true
  has_many :person_movies
  has_many :people, through: :person_movies

  def actors
    people.merge(PersonMovie.actors)
  end

  def directors
    people.merge(PersonMovie.directors)
  end

  def producers
    people.merge(PersonMovie.producers)
  end
end
