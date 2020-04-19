# frozen_string_literal: true

# relationship class between people and movies
class PersonMovie < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  validates :role, presence: true
  enum role: %i[casting producer director]
  scope :casting, -> { where(role: :casting) }
  scope :directors, -> { where(role: :director) }
  scope :producers, -> { where(role: :producer) }

end
