require 'spec_helper'

describe SearchResult do

  # should-matchers config issue .......
  xit { expect(SearchResult).to belong_to(:search_key) }
	
  it 'has a valid factory ' do
    expect(FactoryGirl.create(:search_result)).to be_valid
  end

  before :each do
    @h = FactoryGirl.build(:search_result)
    @h.results = {}
    @h.results["seller"]="Wayfair"
    @h.results["id"]="26hO6GVII4UKU8EGGsYUSI"
    @h.results["lastrecorded_at"]= 1405459600
    @h.results["isactive"]=0
  end

  it 'saves successfully' do
    expect{ @h.save! }.to change(SearchResult, :count).by 1
  end


  # describe 'instance methods ' do
  #   before do
  #     @h = FactoryGirl.build(:search_result)
  #     @h.results = {}
  #     @h.results["seller"]="Wayfair"
  #     @h.results["id"]="26hO6GVII4UKU8EGGsYUSI"
  #     @h.results["lastrecorded_at"]= 1405459600
  #     @h.results["isactive"]=0
  #   end
  #   describe '#convert_results_to_store' do
  #     it 'returns a json string ' do
  #       @h.results = @h.convert_results_to_store

  #       expect(@h.results.class).to eq String
  #     end
  #     it 'converts Ruby hash to json for storage' do
  #       expect(@h.convert_results_to_store).to eq "{\"seller\":\"Wayfair\",\"id\":\"26hO6GVII4UKU8EGGsYUSI\",\"lastrecorded_at\":1405459600,\"isactive\":0}"
  #     end
  #     it 'after calling, record saves correctly' do
  #       expect{ @h.save! }.to change(SearchResult, :count).by 1
  #     end
  #   end
  # end


end


