FactoryBot.define do
  factory :project do
    sequence(:title) { |n| "My awesome project #{n}" }
    sequence(:content) { |n| "The content of my awesome project #{n}" }
    sequence(:slug) { |n| "my-awesome-project-#{n}" }
  end
end
