FactoryGirl.define do
  factory :item do
    email { FFaker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
  end

end
