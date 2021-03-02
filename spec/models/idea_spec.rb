require 'rails_helper'

describe Idea do
  describe '#create' do
    it "category_idがない場合は登録できないこと" do
      idea = build(:idea, category_id: nil)
      idea.valid?
      expect(idea.errors[:category_id]).to include("を入力してください")
    end
  end
end
