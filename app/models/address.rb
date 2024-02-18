class Address < ApplicationRecord
  validates :zip_code, :address, :address_number, presence: true
  validates :state, :city, :neighborhood, presence: true

  belongs_to :addressable, polymorphic: true
end
