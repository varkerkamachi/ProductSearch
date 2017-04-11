module SearchCache

	def self.cache_key search_param
    SearchKey.create!(key: search_param, search_date: Time.now)
  end

  def self.cache_results search_param, products
    return false if search_param.blank? || products.blank?
    SearchResult.create!(search_key: search_param, offset: 10, search_total: products.length, results: products)
  end
end