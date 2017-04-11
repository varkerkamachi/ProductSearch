FactoryGirl.define do
  factory :search_result do
    search_key 
    offset 10
    search_total 1

    results '{}'
  end
end

