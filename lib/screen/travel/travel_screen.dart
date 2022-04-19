// import 'package:flutter/material.dart';
// import 'package:pilgrimage_app/widgets/nav_bar.dart';
//
// class TravelScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavBar(),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                 "https://wallpaperaccess.com/full/4531894.jpg",
//               ),
//               fit: BoxFit.fill,
//               colorFilter: ColorFilter.mode(
//                   Colors.black.withOpacity(0.7), BlendMode.darken),
//             ),
//           ),
//           width: double.infinity,
//           child: Column(
//             children: [
//               //1
//               TextButton(
//                 onPressed: () => showDialog<String>(
//                   context: context,
//                   builder: (BuildContext context) => AlertDialog(
//                     title: Text(
//                       'AlertDialog Title',
//                     ),
//                     content: Text(
//                       'AlertDialog description:\np up message is achieved by '
//                           'flutter AlertDialog widget. so if you want to alert '
//                           'user every time that app launches, you should show '
//                           'this widget in the first screen that your app is '
//                           'going to start with. this is an example from the '
//                           'documentation:',
//                     ),
//                     actions: <Widget>[
//                       TextButton(
//                         onPressed: () => Navigator.pop(context, 'Cancel'),
//                         child: const Text('Cancel'),
//                       ),
//                       TextButton(
//                         onPressed: () => Navigator.pop(context, 'OK'),
//                         child: const Text('OK'),
//                       ),
//                     ],
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.location_pin,
//                         color: Colors.red,
//                         size: 60,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             'Journey',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 40,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'Planner',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 20,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               //2
//               TextButton(
//                 onPressed: () {},
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.explore,
//                         color: Colors.blue,
//                         size: 60,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: const [
//                           Text(
//                             'Explore',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 40,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'and BOOK',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 20,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               //3
//               TextButton(
//                 onPressed: () {},
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.bed,
//                         color: Colors.amber,
//                         size: 60,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             'Reserve',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 40,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'your ROOM',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'SourceSansPro',
//                               fontSize: 20,
//                               letterSpacing: 10,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pilgrimage_app/screen/travel/travel_home_screen.dart';
import 'package:pilgrimage_app/widgets/nav_bar.dart';
import 'travel_home_screen.dart';

class TravelScreen extends StatefulWidget {
  static String id='/totravelscreen';

  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavBar(),
        //appbar
        /*appBar: AppBar(
          backgroundColor: ThemeColors.grey,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_left),
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
          ],
        ),*/
        body: travelHomeScreen(),
      );
  }
}
