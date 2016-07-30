json.extract! message, :id, :msg_id, :description, :baseline_id, :created_at, :updated_at
json.url message_url(message, format: :json)