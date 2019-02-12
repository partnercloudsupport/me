import 'package:flutter/material.dart';
import 'package:navegation/customAlert.dart';
import 'package:navegation/drawer.dart';

class TheGridView extends StatelessWidget {
  static String tag = 'speakers-page';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          drawer: contentDrawer(context,"speakers"),
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 20,
            title: Text(
              "Speakers",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Container(
              padding: EdgeInsets.only(top: 30), child: buildGrid(context))),
    );
  }

  stakspostions(String name, String country, String imagePath, context) {
    CustomAlert alert = new CustomAlert();
    double appHeight = MediaQuery.of(context).size.height;

    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 5,
          child: Image.asset(
            imagePath,
            width: 84.0,
            height: 84.0,
          ),
        ),
        Positioned(
          top: 84+appHeight * 0.02,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
        ),
        Positioned(
          top: 84+2*appHeight * 0.021,
          child: Text(
            country,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
            ),
          ),
        ),
        Positioned(
          height: 131.0,
          width: 84.0,
          child: InkWell(
            onTap: () {
              alert.showCustomAlert(
                context,
                Image.asset(
                  imagePath,
                  width: 120,
                  height: 120,
                ),
                country,
                name,
                'He is a PHD holder, his research has offered some insights on how to cure cancer.',
              );
            },
          ),
        ),
      ],
    );
  }

  GridView buildGrid(context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      padding: const EdgeInsets.all(5.0),
      children: <Widget>[
        stakspostions("Landon Gray", "UAE", 'assets/pics/person.png', context),
        stakspostions(
            "Allen Black", "Macedonia", 'assets/pics/allen_alack.png', context),
        stakspostions(
            "Kevin Rolling", "Yemen", 'assets/pics/kevin_rolling.png', context),
        stakspostions(
            "Jacob Olson", "Tuvalu", 'assets/pics/jacob_olson.png', context),
        stakspostions(
            "Lelia Robbins", "Malta", 'assets/pics/lelia_robbins.png', context),
        stakspostions("Ernest Flowers", "United Kingdom",
            'assets/pics/ernest_flowers.png', context),
        stakspostions(
            "Jeremy Foster", "Spain", 'assets/pics/jeremy_foster.png', context),
        stakspostions("Beulah Herrera", "Malawi",
            'assets/pics/beulah_herrera.png', context),
        stakspostions(
            "Henry Simmons", "Gabon", 'assets/pics/henry_simmons.png', context),
        stakspostions("Jeremy Foster", "Spain",
            'assets/pics/jeremy__foster.png', context),
        stakspostions("Beulah Herrera", "Malawi",
            'assets/pics/beulah__herrera.png', context),
      ],
    );
  }
}
