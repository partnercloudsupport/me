import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'drawer.dart';

class Venue extends StatefulWidget {
  @override
  _VenueState createState() => _VenueState();
}

class _VenueState extends State<Venue> {
  final String _mapKey =
      'pk.eyJ1IjoiYWhtZWRtYWdkeWIiLCJhIjoiY2pyYTd0OTY5MGY4MDQzbGh4cmQzeWx4bSJ9.Txn91d-9CXigyXE2PQ6LHw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: contentDrawer(context,"venu"),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Venue"),
        centerTitle: true,
      ),
      body: bodyStack(),
    );
  }

  Widget bodyStack() {
    return Stack(
      children: <Widget>[
        makeMap(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  'Ritz Carlton',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 216, 61),
                  ),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Jeddah, KSA',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ],
    );
  }

  Widget makeMap() {
    return FlutterMap(
      options: new MapOptions(
        center: LatLng(30.4723012, 31.1964191),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/mohamedfadel/cjr95qxh706ij2spbsfz4xm2u/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibW9oYW1lZGZhZGVsIiwiYSI6ImNqcjZ1bzZxcTBlaXQ0M2xoaHBjMTQ1cmYifQ.dWQ_VlgfHOm6tq86pDQxcw',
          additionalOptions: {
            'accessToken': _mapKey,
            'id': 'mapbox.streets',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 50.0,
              height: 50.0,
              point: new LatLng(30.4723012, 31.1964191),
              builder: (ctx) => new Container(
                    child: Image.asset(
                      'assets/pics/logo.png',
                      width: 28,
                      height: 27,
                    ),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
