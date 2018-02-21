class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name,  uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone, format: { with: /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/ }
end
