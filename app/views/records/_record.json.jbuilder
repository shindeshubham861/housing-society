json.extract! record, :id, :name, :family_members, :room_no, :email, :created_at, :updated_at
json.url record_url(record, format: :json)
