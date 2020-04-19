# frozen_string_literal: true

# Movies model
class Movie < ApplicationRecord
  validates :title, :release_year, presence: true
  has_many :person_movies
  has_many :people, through: :person_movies

  def casting
    people.merge(PersonMovie.casting)
  end

  def directors
    people.merge(PersonMovie.directors)
  end

  def producers
    people.merge(PersonMovie.producers)
  end

  def roman_year
    release_year.strftime('%Y').to_i.to_roman
  end
end
