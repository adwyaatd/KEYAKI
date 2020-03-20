FactoryBot.define do
  factory :user do
    name {"samplename"}
    email {"sample@example.com"}
    password_digest {"password"}
  end
end