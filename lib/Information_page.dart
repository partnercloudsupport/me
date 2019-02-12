// import 'package:flutter/material.dart';

// class Information extends StatelessWidget {
//   final String title;
//   Information(this.title);
//   @override
//   Widget build(BuildContext context) {
//     /**
//      *  these two variable created to decide the size of the card depending on the phone size
//      *  the width will always be 90% of the phone width and the height 80% of the phone heigh
//      */
//     double _width = MediaQuery.of(context).size.width * 0.9;
//     double _height = MediaQuery.of(context).size.height * 0.80;

//     return Scaffold(
//         body: Container(
//           color: Colors.black,
//           child: Center(
//             child: cardWidget(_width, _height)),
//         ));
//   }

//    /// creates the card widget that will contain the route information

//   Widget cardWidget(double mWidth, double mHeight) {
//     return Card(
//       color: Color.fromARGB(255, 2, 173, 90),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//       child: Stack(
//         children: <Widget>[
//           SizedBox(
//             width: mWidth,
//             height: mHeight,
//             child: contentColumn(), /* the content of the card is made in the  contentColumn method */
//           ),
//         ],
//       ),
//     );
//   }


//   /// contains the main structure and all the displayed text

//   Widget contentColumn() {
//     return ListView(
//       children: <Widget>[
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Padding(padding: EdgeInsets.only(top: 70.0)),  /* the padding widget is used to keep spaces between widgets*/
//             Text(
//               'MEDOC19',
//               style: TextStyle(
//                 fontSize: 35.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(padding: EdgeInsets.only(top: 20.0)),
//             Text(
//               'Have you ever finally just gave in to the temptation and read your horoscope in the newspaper on sunday morning?',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18.0,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(padding: EdgeInsets.only(top: 35.0)),
//             Text(
//               'We are socialized',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(padding: EdgeInsets.only(top: 15.0)),
//             socialList(),  /* the socialList function creates a list of the social media contacts in the page */
//             Padding(padding: EdgeInsets.only(top: 35.0)),
//             Text(
//               'Our partners',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(padding: EdgeInsets.only(top: 20.0)),
//             partnersList(), /* the partnersList function creates a list of the partners in the page */
//           ],
//         ),
//       ],
//     );
//   }

//  /// makes list of social media contacts
//   /// every contact is fab to have the click effect and onTap callback and also the tooltip
//   /// the image is the child if the fab loaded from Image.network every image has fixed width and height of 30.0
//   /// the same structure is also used for the partners list
//   ///
//   /// TODO the onPressed callback is currently empty but it's action will be opening web page when pressed
//   /// this will need the url_launcher library

//   Widget socialList() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           heroTag: 'btntwitter',
//           tooltip: 'twitter',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/twitter.gif',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           heroTag: 'btnfacebook',
//           tooltip: 'facebook',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/facebook.png',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           heroTag: 'btninstagram',
//           tooltip: 'instagram',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/instagram.png',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//       ],
//     );
//   }

// Widget partnersList() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           heroTag: 'btndell',
//           tooltip: 'Dell',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/dell.png',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           tooltip: 'HP',
//           heroTag: 'btnhp',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/hp.png',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           heroTag: 'btnhuawei',
//           tooltip: 'huawei',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/huawei.png',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           tooltip: 'Mi',
//           heroTag: 'btnmi',
//           backgroundColor: Colors.white,
//           child: Image.asset(
//             'assets/pics/mi.webp',
//             width: 30.0,
//             height: 30.0,
//           ),
//         ),
//       ],
//     );
//   }
  
// }
