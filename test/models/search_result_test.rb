# == Schema Information
#
# Table name: search_results
#
#  id            :integer          not null, primary key
#  search_key_id :integer
#  offset        :integer
#  search_total  :integer
#  results       :json
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_search_results_on_search_key_id  (search_key_id)
#

require 'test_helper'

class SearchResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
