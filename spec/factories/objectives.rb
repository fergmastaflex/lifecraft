# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :objective do |f|
    f.title 'The Arts'
    f.description 'This is a campaign'
    f.start_date DateTime.now
    f.end_date DateTime.now
  end
end
