# frozen_string_literal: true

# relationship class between people and movies
class PersonMovie < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  validates :role, presence: true
  enum role: %i[actor producer director]
  scope :actors, -> { where(role: :actor) }
  scope :directors, -> { where(role: :director) }
  scope :producers, -> { where(role: :producer) }

end
