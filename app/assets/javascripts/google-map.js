function gmap_show(tutor) {
  map = Gmaps.build('Google');
  map.buildMap({ provider: {  scaleControl: false, // Set to false to hide scale
                              streetViewControl: false, // Set to disable to hide street view
                              overviewMapControl: false, // Set to false to remove overview control
                              rotateControl: false, // Set to false to disable rotate control
                              panControl: false, // Set to false to disable
                              zoomControl: true, // Set to true if using zoomControlOptions below, or false to remove all zoom controls.
                              zoomControlOptions: {
                                style:google.maps.ZoomControlStyle.SMALL // Change to SMALL/DEFAULT to force just the + and - buttons.
                              },
                              mapTypeId: google.maps.MapTypeId.ROADMAP, // Set the type of Map
                              scrollwheel: true, // Disable Mouse Scroll zooming (Essential for responsive sites!)
                              streetViewControl: false, // Set to disable to hide street view
                              mapTypeControl: false, // Disable Map/Satellite switch
                              minZoom: 5, // Minimum zoom level allowed (0-20)
                              maxZoom: 17 // Maximum soom level allowed (0-20)
                            }, internal: {id: 'map'}},function(){

    var points = tutor;
    var markers = map.addMarkers(points);
    map.bounds.extendWith(markers);
    map.fitMapToBounds();
    //handler.getMap().setZoom(15);// set the default zoom of the map

    //_.each(points, function(point, index){
    //  google.maps.event.addListener(markers[index].getServiceObject(), 'click', function(){
    //    window.location.href = point.link; // link on marker
    //  });
    //})

    //google.maps.event.addListener(markers, 'click', function() {
       //map.panTo(points.getPosition());
    //   alert("Hello");
    //});
  });
}
