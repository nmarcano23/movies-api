# frozen_string_literal: true

module V1
  # People controller
  class PeopleController < ApplicationController
    before_action :find_person, only: %i[show destroy update]

    def index
      render json: Person.all
    end

    def show
      render json: @person
    end

    def destroy
      @person.movies.destroy_all
      render json: @person.destroy
    end

    def update
      render json: @person.update(person_params)
    end

    def create
      render json: Person.create(person_params)
    end

    private

    def person_params
      params.require(:person).permit(:first_name, :last_name, :aliases, :gender)
    end

    def find_person
      @person = Person.find(params[:id])
    end
  end
end

