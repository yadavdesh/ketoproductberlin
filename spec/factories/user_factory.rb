
FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  sequence(:first_name) {|n| "test#{n}"}
  sequence(:last_name) {|n| "ltest#{n}"}


  factory :user do
    email
    password "123456"
    first_name
    last_name
    admin false
  end

end
