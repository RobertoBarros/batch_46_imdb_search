class SearchesController < ApplicationController
  def index
    @results = PgSearch.multisearch(params[:q])
  end
end
