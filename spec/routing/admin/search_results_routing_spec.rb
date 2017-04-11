require 'spec_helper'

describe Admin::SearchResultsController, :type => :routing do
  
  describe 'routing' do
    it 'GET admin/cache/list routes to index' do
      expect(get 'admin/cache').to route_to('admin/search_results#index')
    end

    it 'GET admin/cache/:id routes to show' do
      expect(get 'admin/cache/1').to route_to('admin/search_results#show', id: '1')
    end

    it 'DELETE admin/cache/:id routes to destroy' do
      expect(delete 'admin/cache/1').to route_to('admin/search_results#destroy', id: '1')
    end

    it 'PUT admin/cache/:id routes to update' do
      expect(put 'admin/cache/1').to route_to('admin/search_results#update', id: '1')
    end
  end
end