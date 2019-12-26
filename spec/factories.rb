FactoryBot.define do
  
    factory :user do
      email "joe@gmail.com"
      encrypted_password "blah"
      reset_password_token "blah"
    end

    
  end