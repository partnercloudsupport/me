import 'package:flutter/material.dart';
import 'drawer.dart';

class AboutRoute extends StatefulWidget {
  static String tag = 'about-page';

  @override
  _AboutRouteState createState() => _AboutRouteState();
}

class _AboutRouteState extends State<AboutRoute> {
  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(true);
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/pics/about_background.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text("About"),
            centerTitle: true,
          ),
          drawer: contentDrawer(context, "about"),
          body: bodyList(appWidth),
        ),
      ),
    );
  }

  Widget bodyList(double appWidth) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 340)),

        // content above the list
        Container(
          padding: EdgeInsets.only(left: 16, right: 100),
          child: Text(
            'Middle East Diabetes & Obesity Congress ',
            style: TextStyle(
                fontSize: 26.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Container(
          padding: EdgeInsets.only(left: 16, right: 120),
          child: Text(
            'Takes place 8-11 March 2019 in Jeddah, KSA.',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        // content in the list

        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: Container(
            color: Color.fromARGB(255, 255, 216, 61),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 16)),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 20,
                      child: Image.asset(
                        'assets/pics/logow.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'MESSAGE FROM THE PRESIDENT',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 25),
                  height: 1,
                  color: Colors.black45,
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 50),
                  child: Text(
                    bigMessage,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: personPart(),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                listTailContent(appWidth),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget listTailContent(double appWidth) {
    return Container(
      color: Colors.black,
      width: appWidth,
      height: 180,
      padding: EdgeInsets.all(8),
      child: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/pics/move_backgrounf.png',
                height: 180,
                fit: BoxFit.fitWidth,
              ),
            ),
            // Center(
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.all(Radius.circular(18)),
            //     child: Container(
            //       height: 180,
            //       color: Color.fromARGB(50, 255, 255, 255),
            //     ),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20, right: 120, top: 20),
                  child: Text(
                    'Do more, feel better, live longer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/pics/gsk.png',
                      width: 42,
                      height: 42,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget personPart() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/pics/personb.png',
          width: 50,
          height: 50,
        ),
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Prof. Abdulrahman Alshaikh',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'President',
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
          ],
        ),
      ],
    );
  }

  String bigMessage = """Dear Colleagues,
It is with great pleasure that we invite you to attend The Middle East Diabetes & Obesity Congress (MEDOC19) which will take place 8-11 March 2019 in Jeddah, KSA.

Diabetes & Obesity have developed over the last decades to become essential components of diagnosis and care for patients with diabetes mellitus. New technologies are soon to be married with existing management applications in one congress in Ritz Carlton, Jeddah.""";
}
