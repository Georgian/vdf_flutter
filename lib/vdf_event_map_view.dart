import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_map/flutter_map.dart';
//import 'package:latlong/latlong.dart';

class BiklaMapView extends StatefulWidget {
  @override
  _BiklaMapViewState createState() => new _BiklaMapViewState();
}

class _BiklaMapViewState extends State<BiklaMapView> {

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Text("Map");
//    return new FlutterMap(
//      options: new MapOptions(
//        center: new LatLng(51.5, -0.09),
//        zoom: 13.0,
//      ),
//      layers: [
//        new TileLayerOptions(
//          urlTemplate: "https://api.tiles.mapbox.com/v4/"
//              "{id}/{z}/{x}/{y}@2x.png?access_token=pk.eyJ1IjoiZ2dyZWMiLCJhIjoiY2o0NnFkN2dmMDVybjMybzMyMmR3dmEzbyJ9.M0Rga01Pazxb3UBMykn4Yg",
//          additionalOptions: {
//            'accessToken': 'pk.eyJ1IjoiZ2dyZWMiLCJhIjoiY2o0NnFkN2dmMDVybjMybzMyMmR3dmEzbyJ9.M0Rga01Pazxb3UBMykn4Yg',
//            'id': 'mapbox.streets',
//          },
//        ),
//        new MarkerLayerOptions(
//          markers: [
//            new Marker(
//              width: 80.0,
//              height: 80.0,
//              point: new LatLng(51.5, -0.09),
//              builder: (ctx) =>
//              new Container(
//                child: new FlutterLogo(),
//              ),
//            ),
//          ],
//        ),
//      ],
//    );
  }
}