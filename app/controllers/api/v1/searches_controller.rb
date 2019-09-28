class Api::V1::SearchesController < ApplicationController

  def index
    @searches = Search.all
    render json: @searches
  end

  def create
    # binding.pry
    @search = Search.new(search_params)
      if @search.save
        render json: @search
      else
        render json: {error: 'Error creating search'}
        #code
      end
  end

  def top_search
    @top_searches = [Search.group(:searchterm).count]
    render json: @top_searches
  end

  private

  def search_params
    params.permit(:searchterm)
  end

end
