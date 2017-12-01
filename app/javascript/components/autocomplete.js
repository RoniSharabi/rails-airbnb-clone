function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var alibiLocation = document.getElementById('alibi_location');

    if (alibiLocation) {
      var autocomplete = new google.maps.places.Autocomplete(alibiLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(alibiLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
