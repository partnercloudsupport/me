import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';
import 'drawer.dart';

class FloorPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: contentDrawer(context,"floor"),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Floor Plan",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 40.0)),
          Image.asset(
            'assets/pics/location_icon.png',
            width: 37.0,
            height: 38.0,
          ),
          Padding(padding: EdgeInsets.only(top: 50.0)),
          Container(
            width: 260.0,
            height: 408.0,
            child: ZoomableImage(
              AssetImage('assets/pics/floor.png'),
              backgroundColor: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30.0)),
        ],
      )
    );
  }
}
