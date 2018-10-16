/* --------------------------------------------------
	Google Maps Settings
-------------------------------------------------- */



$(document).ready(function(){

	
	function initGMap() {
		'use strict';

		var mapOptions = {
		// How zoomed in you want the map to start at (always required)
		zoom: 7,
		scrollwheel: false,

		// The latitude and longitude to center the map (always required)
		center: new google.maps.LatLng(48.858568, 2.350803), // Rue Saint-Bon
		
		// Styling of the map in JSON object
		styles: [
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]
		};
		var map = new google.maps.Map(document.getElementById('map-canvas'),
		  mapOptions);

		// Map marker 
		var image = 'http://www.octarinethemes.com.s3.amazonaws.com/resources/definity/map-pin.png';
		var myLatLng = new google.maps.LatLng(48.858568, 2.350803);
		var beachMarker = new google.maps.Marker({
			position: myLatLng,
			map: map
		});
	} // initGMap

	google.maps.event.addDomListener(window, 'load', initGMap);

});