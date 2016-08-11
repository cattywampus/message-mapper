class Application < ApplicationRecord
  belongs_to :baseline
  has_and_belongs_to_many :messages_produced, class_name: Message
end
