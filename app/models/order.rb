class Order < ApplicationRecord
  belongs_to :cart
  enum status: [:ordered, :payed, :in_profress, :sent]
  validates :name, :address, :email, presence: true
  validates :status, inclusion: statuses.keys
end
