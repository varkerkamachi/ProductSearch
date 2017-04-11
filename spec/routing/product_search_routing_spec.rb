require 'spec_helper'

RSpec.describe ProductSearchController, :type => :routing do
	describe 'routing' do
    it 'site root routes to #index' do
      expect(get '/').to route_to('product_search#index')
    end

    it 'product_search routes to #index' do
      expect(get '/product_search').to route_to('product_search#index')
    end
  end
end