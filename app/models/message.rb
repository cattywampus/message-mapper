class Message < ApplicationRecord
  belongs_to :baseline
  has_and_belongs_to_many :producers, join_table: :producers, class_name: Application
end
