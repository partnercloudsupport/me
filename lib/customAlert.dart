import 'package:flutter/material.dart';

class CustomAlert {
  showCustomAlert(BuildContext context, Image image, String name,
      String country, String description) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
                width: 350.0,
                height: 300.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      child: image,
                      top: -70,
                      right: 0,
                      left: 0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),
                        ),
                        Text(
                          country,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        FloatingActionButton(
                          onPressed: (Navigator.of(context).pop),
                          heroTag: 'btndialog',
                          child: Icon(Icons.close),
                          elevation: 0,
                          backgroundColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                )),
          );
        });
  }
}
