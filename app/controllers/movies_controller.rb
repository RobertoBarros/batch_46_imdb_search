class MoviesController < ApplicationController
  def index
    if params[:q].present?
      @movies = Movie.search(params[:q])
    else
      @movies = Movie.all
    end
  end
end
