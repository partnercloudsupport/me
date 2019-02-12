import 'package:flutter/material.dart';
import 'drawer.dart';
class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    double _appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 173, 90),
        drawer: contentDrawer(context,"agenda"),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 2, 173, 90),
              expandedHeight: 380.0,
              elevation: 0,
              title: Text('Agenda'),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: appBarContent(_appWidth),
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 130.0,
              delegate: SliverChildListDelegate(
                [
                  timeSlot('8 March 2019', 4),
                  eventSlot('assets/pics/door.png', 'Events Doors Open',
                      'Event doors open for the attendies', '4:00PM - 6:00PM'),
                  eventSlot(
                      'assets/pics/personb.png',
                      'Prof. Abdulrahman Alshaikh',
                      'Event president speech',
                      '6:00PM - 7:30PM'),
                  eventSlot('assets/pics/person.png', 'Landon Gray',
                      'A talk about “Something”', '7:30PM - 8:15PM'),
                  eventSlot('assets/pics/dinner.png', 'Dinner Break',
                      'Dinner meal at “place”', '7:30PM - 8:15PM'),
                  timeSlot(' 9 March 2019', 2),
                  eventSlot('assets/pics/person.png', 'Landon Gray',
                      'A talk about “Something”', '7:30PM - 8:15PM'),
                  eventSlot('assets/pics/dinner.png', 'Dinner Break',
                      'Dinner meal at “place”', '7:30PM - 8:15PM'),
                ],
              ),
            ),
          ],
        ));
  }

  Widget appBarContent(double _appWidth) {
    return Container(
      width: _appWidth,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/pics/pattern.png',
            height: 410.0,
            width: _appWidth,
            fit: BoxFit.cover,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/pics/time.png',
                width: 38,
                height: 46,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                'Hello!',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                'This is the agenda for the MEDOC19 conference from 8 to 11 March',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget timeSlot(String date, int events) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
        Image.asset(
          'assets/pics/event.png',
          width: 9,
          height: 13,
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        Text(
          date,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        Text(
          '$events Events',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

  Widget eventSlot(String img, String title, String description, String time) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 16)),
          Image.asset(
            img,
            width: 84,
            height: 84,
          ),
          Padding(padding: EdgeInsets.only(right: 40)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                description,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                time,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
