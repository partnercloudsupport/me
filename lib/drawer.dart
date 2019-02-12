import 'package:flutter/material.dart';
import 'package:navegation/floorPlan.dart';
import 'agenda.dart';
import 'speakers/speakers.dart';
import 'information.dart';
import 'about.dart';
import 'venue.dart';
import 'main.dart';
import 'signing/changepassword.dart';
import 'package:shared_preferences/shared_preferences.dart';

// contaiet drawer
Widget contentDrawer(context, String name) {
  ChangePass x = ChangePass();
  Color about = Colors.white;
  Color agenda = Colors.white;
  Color information = Colors.white;
  Color speakers = Colors.white;
  Color floor = Colors.white;
  Color venu = Colors.white;

  if (name == "about") {
    about = Colors.orange;
  }
  if (name == "agenda") {
    agenda = Colors.orange;
  }
  if (name == "information") {
    information = Colors.orange;
  }
  if (name == "speakers") {
    speakers = Colors.orange;
  }
  if (name == "floor") {
    information = Colors.orange;
  }
  if (name == "venu") {
    venu = Colors.orange;
  }
  check() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("loged", "faluse");
    print(pref.getString("loged"));
  }

  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.5,
    child: Drawer(
      elevation: 0.0,
      child: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(
              // child: Padding(
              //   padding: EdgeInsets.only(left: 250),
              //   child:  Image.asset("assets/pics/x_icon.png"),
              // ),
              height: MediaQuery.of(context).size.height * .30,
            ),
            ListTile(
              title: Center(
                  child: Text(
                "About",
                style: TextStyle(color: about, fontSize: 16),
              )),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => AboutRoute()));
              },
            ),
            new ListTile(
              title: Center(
                  child: new Text("Agenda",
                      style: TextStyle(color: agenda, fontSize: 16))),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => Agenda()));
              },
            ),
            new ListTile(
              title: Center(
                  child: Text("Speakers",
                      style: TextStyle(color: speakers, fontSize: 16))),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => TheGridView()));
              },
            ),
            ListTile(
              title: Center(
                  child: Text("Vendor",
                      style: TextStyle(color: venu, fontSize: 16))),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Venue()));
              },
            ),
            ListTile(
              subtitle: Center(
                  child: Text("Comen soon ",
                      style: TextStyle(
                          color: Colors.white12, fontStyle: FontStyle.italic))),

              title: Center(
                  child: Text("Floor Plan",
                      style: TextStyle(color: Colors.white54, fontSize: 16))),
              // onTap: () {
              //   Navigator.of(context).pop();
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (BuildContext context) => FloorPlan()));
              // },
            ),
            ListTile(
              subtitle: Center(
                  child: Text("Comen soon ",
                      style: TextStyle(
                          color: Colors.white12, fontStyle: FontStyle.italic))),
              title: Center(
                  child: Text("Information",
                      style: TextStyle(color: Colors.white54, fontSize: 16))),
              // onTap: () {
              //   Navigator.of(context).pop();
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (BuildContext context) => Information()));
              // },
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.24),
            ),
            ListTile(
              title: Center(
                  child: Text(
                "Log out",
                style: TextStyle(color: Colors.white30, fontSize: 12),
              )),
              trailing: Icon(
                Icons.vertical_align_top,
                color: Colors.white30,
              ),
              onTap: () {
                check();
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyApp()));
              },
            ),
          ],
        ),
      ),
    ),
  );
}
