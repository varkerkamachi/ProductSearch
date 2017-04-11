require 'rails_helper'

RSpec.describe Admin::SearchResultsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do

      cr = FactoryGirl.create(:search_result)
      get :show, params: {id: cr}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    xit "returns http success" do
      cr = FactoryGirl.create(:search_result)
      get :update, params: {id: cr, format: :js}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      cr = FactoryGirl.create(:search_result)
      get :destroy, params: {id: cr}
      expect(response).to redirect_to( action: :index )
    end
    it "deletes the search result record" do
      cr = FactoryGirl.create(:search_result)
      expect{ get :destroy, params: {id: cr.id } }.to change(SearchResult, :count).by -1
    end
    it "deletes the search key record" do
      @sk = FactoryGirl.create(:search_key)
      sr = FactoryGirl.create(:search_result, search_key_id: @sk.id)
      expect{ get :destroy, params: {id: sr.id } }.to change(SearchKey, :count).by -1
    end
  end

end
