class Api::V1::SearchesController < ApplicationController

  def index
    @searches = Search.all
    render json: @searches
    #fetches all the searches/searchterms from the db - rendering the json object of it
  end

  def create
    # create action - where searchterm is created and saved - renders json of search if it is saved
    @search = Search.new(search_params)
      if @search.save
        render json: @search
      else
        render json: {error: 'Error creating search'}
        #code
      end
  end

  def top_search
    #top_searches - custon action method - where searchterms are ordered by count -  returned in one hash
    @top_searches = [Search.group(:searchterm).order('count_all desc').count]
    render json: @top_searches
  end

  private

  def search_params
    params.permit(:searchterm)
  end

end
