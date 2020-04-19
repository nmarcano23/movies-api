# frozen_string_literal: true

module V1
  # PersonMovies controller
  class PersonMoviesController < ApplicationController
    before_action :find_person_movie, only: %w[destroy update show]
    def index
      render json: PersonMovie.all
    end

    def destroy
      render json: @person_movie.destroy
    end

    def show
      render json: @person_movie
    end

    def update
      render json: @person_movie.update(person_movie_update_params)
    end

    def create
      render json: PersonMovie.create(person_movie_params)
    end

    private

    def person_movie_update_params
      params.require(:person_movie).permit(:role)
    end

    def find_person_movie
      @person_movie = PersonMovie.find(params[:id])
    end

    def person_movie_params
      params.require(:person_movie).permit(:person_id, :movie_id, :role)
    end
  end
end

