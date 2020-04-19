# frozen_string_literal: true

# serializer for person model
class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :aliases,
             :movies_as_actor, :movies_as_director, :movies_as_producer

  def movies_as_actor
    object.movies_as_actor
  end

  def movies_as_director
    object.movies_as_director
  end

  def movies_as_producer
    object.movies_as_producer
  end
end
