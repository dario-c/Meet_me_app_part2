FactoryGirl.define do 
  factory :user do 
    user_firstname "DisneyLand"
    user_lastname "Gothamity"

    factory :nolastname do 
      user_lastname nil
    end
  end
end