FactoryGirl.define do
  factory :user do
    salutation 'mr'
    name 'Super Name'
    date_of_birth '01-01-1990'
    phone_number 123_456_789
    email 'super@name.com'
    password 'password'
  end
end
