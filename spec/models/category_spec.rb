require 'rails_helper'

describe Category do
  describe '#create' do
    it "nameがない場合は登録できないこと" do
      category = build(:category, name: nil)
      category.valid?
      expect(category.errors[:name]).to include("を入力してください")
    end
  end
end
