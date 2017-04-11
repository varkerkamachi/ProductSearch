# == Schema Information
#
# Table name: search_keys
#
#  id          :integer          not null, primary key
#  key         :string
#  active      :boolean          default(TRUE)
#  search_date :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SearchKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
