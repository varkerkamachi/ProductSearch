
class SearchKey < ApplicationRecord
  has_many :search_results, dependent: :destroy

	scope :of_key, ->(key) { where('key = ?', key).first }

  def self.exists_of? key
    SearchKey.where('key = ?', key).any?
  end

end
