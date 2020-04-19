# frozen_string_literal: true

module V1
  # Movies controller
  class MoviesController < ApplicationController
    before_action :find_movie, only: %i[show destroy update]

    def index
      render json: Movie.all
    end

    def show
      render json: @movie
    end

    def destroy
      @movie.people.destroy_all
      render json: @movie.destroy
    end

    def update
      render json: @movie.update(movie_params)
    end

    def create
      render json: Movie.create(movie_params)
    end

    private

    def movie_params
      params.require(:movie).permit(:title, :release_year)
    end

    def find_movie
      @movie = Movie.find(params[:id])
    end
  end
end
