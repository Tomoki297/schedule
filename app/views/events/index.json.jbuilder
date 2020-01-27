json.array!(@events) do |event|
  json.extract! event, :id, :title, :backgroundColor, :allDay
  json.start event.start
  json.end event.end   
end
