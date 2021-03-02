class Category < ApplicationRecord
  has_many :ideas
  accepts_nested_attributes_for :ideas
  validates :name, presence: true

  def self.search(search)
    if search != ""
      Category.where('name LIKE(?)', "%#{search}%")
    else
      Category.all
    end
  end
end
