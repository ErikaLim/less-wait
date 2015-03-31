// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// Loads all Semantic javascripts
//= require semantic-ui

// window.onload = function () {
//   getLocation();
// };
//
// function getLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(sendPosition);
//     } else {
//         throw "Geolocation is not supported by this browser.";
//     }
// }
//
// function sendPosition(position) {
//     console.log("Latitude: " + position.coords.latitude +
//     "Longitude: " + position.coords.longitude);
//     $('#lat').val(position.coords.latitude);
//     $('#lng').val(position.coords.longitude);
// }
//
//
// function getDistance(lat1, lon1, lat2, lon2, unit) {
// // unit - default is miles
// // unit = 'M' for miles, 'K' for Kilometers, 'N' for meters?
//   var radlat1 = Math.PI * lat1/180;
//   var radlat2 = Math.PI * lat2/180;
//   var radlon1 = Math.PI * lon1/180;
//   var radlon2 = Math.PI * lon2/180;
//   var theta = lon1-lon2;
//   var radtheta = Math.PI * theta/180;
//   var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
//   dist = Math.acos(dist);
//   dist = dist * 180/Math.PI;
//   dist = dist * 60 * 1.1515;
//   if (unit=="K") { dist = dist * 1.609344 };
//   if (unit=="N") { dist = dist * 0.8684 };
//   return dist;
// }
