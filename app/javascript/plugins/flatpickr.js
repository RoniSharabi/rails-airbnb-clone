import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  enableTime: true,
  time_24hr: true,
  locale: {
    "firstDayOfWeek": 1 // start week on Monday
  }
})
