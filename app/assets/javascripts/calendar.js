$(document).on('turbolinks:load', function() {
  $('#calendar').fullCalendar({
     events: '/events.json',
     dayNamesShort: ["日", "月", "火", "水", "木", "金", "土"],
     header: {
       left: "prev, next, today",
       center: "title",
       right: "month, agendaWeek, agendaDay",
     },
     aditable: true,
     timeFormat: "H:mm",
     allDaySlot: true,
     allDayText: '終日',
     slotLabelFormat: "H:mm",
     minTime: "06:00:00",
     maxTime: "24:00:00",

     eventClick: function(calEvent, jsEvent, view) {
       window.location.href = "http://localhost:3000/events/" + calEvent.id
     },
  });
  return
});
$(document).on('turbolinks:before-cache', function() {
  $('#calendar').empty();
  return
});
