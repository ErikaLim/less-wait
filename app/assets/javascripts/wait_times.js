

// map.featureLayer.on('layeradd', function(e) {
//   var marker, popupContent, properties;
//   marker = e.layer;
//   properties = marker.feature.properties;
//   popupContent = '<div class="popup">' + '<h3>' + properties.name + '</h3>' + '<p>' + properties.address + '</p>' + '</div>';
//   return marker.bindPopup(popupContent, {
//     closeButton: false,
//     minWidth: 320
//   });
// });
//
//
// $('article li').click(function(e) {
//   var current, currentlyClickedName;
//   current = $(this);
//   currentlyClickedName = current.find('h2').text();
//   return map.featureLayer.eachLayer(function(marker) {
//     var id;
//     if (marker.feature.properties.name === currentlyClickedName) {
//       id = layer._leaflet_id;
//       return map._layers[id].openPopup();
//     }
//   });
// });
// );
