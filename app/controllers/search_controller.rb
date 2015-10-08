class SearchController < ApplicationController
  def index
  end

  def results
    @query = Question.search(params[:query], track: true)
  end
end