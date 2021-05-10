FactoryBot.define do
  factory :tc do
    sentence { "MyString" }
    sentence_order { 1 }
    rank_of_importance { 1 }
    company { nil }
  end
end
