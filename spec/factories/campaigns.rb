# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do |f|
    f.title 'The Arts'
    f.description 'This is a campaign'
  end
end
