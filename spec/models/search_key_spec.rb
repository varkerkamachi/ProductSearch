require 'spec_helper'

describe SearchKey do

  # should-matchers config issue .......
  xit { expect(subject).to have_many(:search_results).dependent(:destroy) }
	
  it 'has a valid factory ' do
    expect(FactoryGirl.create(:search_key)).to be_valid
  end


  before :each do
    SearchResult.delete_all
    SearchKey.delete_all
    @key1 = FactoryGirl.create(:search_key, key: 'vanilla', active: 1) 
    @key2 = FactoryGirl.create(:search_key, key: 'chocolate', active: 1)
  end

  describe 'scopes ' do
    describe '#of_key' do
      it 'returns the record matching the key ' do
        expect(SearchKey.of_key('vanilla')).to eq @key1
      end
    end
  end

  describe 'class methods ' do
    describe '.exists_of?' do
      it 'returns true if a record matching that key exists' do
        expect(SearchKey.exists_of?('chocolate')).to eq true
      end
    end
  end


end