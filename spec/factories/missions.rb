# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mission do |f|
    f.title 'Epic mission'
    f.description 'This is a mission'
  end
end