FactoryBot.define do
  factory :company do
    name { "Facebook" }
    description { "Facebook is an online social networking service that enables its users to connect with friends and family." }
    url { "facebook.com" }
    logo { "facebook.png" }
    crunchbase_url { "https://www.crunchbase.com/organization/facebook?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv" }
  end
end
