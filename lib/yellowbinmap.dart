import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class yellowBinMap extends StatefulWidget {
  const yellowBinMap({Key? key}) : super(key: key);

  @override
  State<yellowBinMap> createState() => _yellowBinMapState();
}

class _yellowBinMapState extends State<yellowBinMap> {
  late BitmapDescriptor mapMarker;
  Set<Marker> _marker={};
  @override
  void initState(){
    super.initState();
    setCustomMarker();
  }
  void setCustomMarker() async{
    mapMarker= await BitmapDescriptor.fromAssetImage(ImageConfiguration(), "images/iconYellow.png");
  }
  void _onMapCreated(GoogleMapController controller){
    controller.setMapStyle(utils.mapStyle);
    setState(() {
      _marker.add(
          Marker(markerId: MarkerId("id-3"), position: LatLng(31.5728, 74.3221),
            icon: mapMarker,
            infoWindow: InfoWindow(
                title: "Yellow Dustbin",
                snippet: 'For In-Organic Waste'
            ),)
      );
      //Marker(markerId: MarkerId("id-2"), position: LatLng(31.5769, 74.3272));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _marker,
            initialCameraPosition:CameraPosition(
              target: LatLng(31.5822, 74.3264),

              zoom: 15,
            )
        )
    );
  }
}

class utils{
  static String mapStyle='''
  [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]
  ''';
}
