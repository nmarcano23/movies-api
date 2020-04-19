class PersonMovieSerializer < ActiveModel::Serializer
  attributes :id, :role
  belongs_to :person
  belongs_to :movie
end
