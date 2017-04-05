class ProductSearchController < ApplicationController

  # GET /searches
  def index
    if params[:search]
      @items = Sem3SearchService.new(params).execute
    end
  end
end
