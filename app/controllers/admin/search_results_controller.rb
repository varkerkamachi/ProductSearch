class Admin::SearchResultsController < ApplicationController

  def index
    @cache_results = SearchResult.all
  end

  def show
    @cache_result = get_record params[:id]
  end


  # def update
  #   @cache_result = get_record params[:id]
  #   unless @cache_result.blank?
  #     @cache_result.update!( model_params )
  #   end
  # end

  def destroy
    @cache_result = get_record params[:id]
    unless @cache_result.blank?
      @cache_key = SearchKey.find( @cache_result.search_key_id )
      if @cache_result.destroy
        @cache_key.destroy! if @cache_key.present?
      end
    end
    redirect_to action: :index
  end

  private
  def get_record id
    return nil if params[:id].blank?
    SearchResult.find( id )
  end

  def model_params
    params.permit(:id, :search_key_id, :offset, :search_total, :results)
  end
end
