import 'package:flutter/material.dart';
import 'drawer.dart';
class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: contentDrawer(context,"information"),
      appBar: AppBar(
        title: Text('Information'),
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(
              'User Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 15.0)),
            Text(
              'Country',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25.0)),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: Color.fromARGB(255, 2, 173, 90),
                  width: MediaQuery.of(context).size.width * 0.85,

                  child: Stack(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/pics/pattern.png',
                       fit: BoxFit.cover,
                       height: 500,
                            width: MediaQuery.of(context).size.width * 0.8,
                      )),
                      contentColumn(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }

  Widget contentColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 40)),
        Text(
          'MEDOC19',
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 20.0)),
        Text(
          'Have you ever finally just gave in to the temptation and read your horoscope in the newspaper on sunday morning?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 35.0)),
        Text(
          'We are socialized',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        socialList(),
        Padding(padding: EdgeInsets.only(top: 30)),
        Text(
          'Our partners',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        partnersList(),
        Padding(padding: EdgeInsets.only(top: 30)),
      ],
    );
  }


  Widget partnersList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'Dell',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/circlelogob.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'HP',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/gsk.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'huawei',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/logob.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'Mi',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/sanofi.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
      ],
    );
  }

  Widget socialList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'twitter',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/twitter.gif',
            width: 30.0,
            height: 30.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'facebook',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/facebook.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0.0,
          heroTag: 'instagram',
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/pics/instagram.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
      ],
    );
  }


}
