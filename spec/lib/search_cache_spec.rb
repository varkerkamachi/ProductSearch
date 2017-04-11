require 'spec_helper'

describe SearchCache do

	describe '#cache_key' do
    it 'saves the search term to the database' do
      expect{ SearchCache.cache_key('pizza').to change(SearchKey, :count).by 1 }
    end
  end

  describe '#cache_results' do
    it 'saves the search results to the database' do
      expect{ SearchCache.cache_results('pizza', build_objects_for_query).to change(SearchResult, :count).by 1 }
    end
  end

end


def build_objects_for_query
  hsh = {}
  hsh["results"]=
  [{"created_at": 1454243144,
    "length": "241.30",
    "description": "\"> The Mummy for the iPad is the first enveloping ... (visit site URLs for full description)",
    "mpn": "loop5teal",
    "updated_at": 1473948110,
    "model": "loop5teal",
    "brand": "Loop",
    "width": "5.08",
    "color": "Teal",
    "label": "Loop Attachment",
    "sku": "B00EX8UCH6",
    "name": "amazon.com"
    }]
    hsh
end 