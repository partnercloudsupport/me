import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  
final String name;
final String  country;
final String imagePath;
CustomCard(this.name, this.country, this.imagePath);
  
  @override
  Widget build(BuildContext context){

      double appWidth = MediaQuery.of(context).size.width;
      double appHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0.0,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15),),
          Image.asset(
            imagePath,
            width: appWidth * 0.6,
            height: appHeight * 0.6,
          ),
           Padding(
              padding: EdgeInsets.all(7.0),
            ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          Text(
            country,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}