# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyText"
    start_time "2014-05-20 16:07:02"
    end_time "2014-05-20 16:07:02"
  end
end
