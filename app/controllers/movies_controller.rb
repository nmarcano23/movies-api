class MoviesController < ApplicationController
  def show
    render json: { name: 'Harry Potter' }
  end
end
