FactoryBot.define do
  factory :idea do
    category_id          { create(:category).id }
    body                 { "早起き" }
  end
end
