# frozen_string_literal: true

# serializer for movie model
class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :roman_year,
             :casting, :directors, :producers

  def roman_year
    object.roman_year
  end

  def casting
    object.casting
  end

  def directors
    object.directors
  end

  def producers
    object.producers
  end
end
