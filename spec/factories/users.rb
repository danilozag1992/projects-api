FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "dzagarcanin #{n}" }
    name { "Danilo Zagarcanin" }
    url { "http://example.com" }
    avatar_url { "http://example.com/avatar" }
    provider { "github" }
  end
end
