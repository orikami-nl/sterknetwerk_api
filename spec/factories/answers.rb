# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    results_id 1
    question_id 1
    value "MyString"
  end
end