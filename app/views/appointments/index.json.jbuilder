json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :start, :end, :schedule_id, :note, :procedure_id
  json.url appointment_url(appointment, format: :json)
end
