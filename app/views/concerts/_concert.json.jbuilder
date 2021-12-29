json.extract! concert, :id, :name, :duration, :asistentes, :event_date, :created_at, :updated_at
json.url concert_url(concert, format: :json)
