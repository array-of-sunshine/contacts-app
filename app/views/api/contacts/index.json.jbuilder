json.array! @contacts do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json.last_name contact.last_name
  json.email contact.email
  json.phone_number contact.phone_number
  json.created_at contact.created_at
  json.updated_at contact.updated_at
  json.full_name contact.full_name
  json.friendly_updated_at contact.friendly_updated_at
json.japanese_phone_number contact.japanese_phone_number
end
