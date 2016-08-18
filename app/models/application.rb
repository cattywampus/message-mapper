class Application < ApplicationRecord
  belongs_to :baseline
  has_and_belongs_to_many :messages_produced, join_table: :producers, class_name: Message
  has_and_belongs_to_many :messages_consumed, join_table: :consumers, class_name: Message
end
