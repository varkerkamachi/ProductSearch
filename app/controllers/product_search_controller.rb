class ProductSearchController < ApplicationController
  # include SearchCache
  # GET /searches
  def index
    if params[:search]
      if SearchKey.exists_of?(params[:search]) 
        @items =  SearchKey.of_key(params[:search]).search_results.present? ? SearchKey.of_key(params[:search]).search_results.first.results : []
    	else
        params[:cache] = true
        @items =  Sem3SearchService.new(params).execute['results']
    	end
    end
  end
end
