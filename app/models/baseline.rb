class Baseline < ApplicationRecord
  belongs_to :product
  has_many :messages
  has_many :applications
end
