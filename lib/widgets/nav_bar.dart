import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/home_screen.dart';
import 'package:pilgrimage_app/screen/travel/travel_screen.dart';
import 'package:pilgrimage_app/screen/testing.dart';
import '../screen/newsFeed.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(1.0),
            spreadRadius: 0.1,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //HOME
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
            child: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          //NEWS
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NewsFeed();
                  },
                ),
              );
            },
            child: Icon(
              Icons.article,
              color: Colors.black,
            ),
          ),
          //TRAVEL
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TravelScreen();
                  },
                ),
              );
            },
            child: Icon(
              Icons.travel_explore,
              color: Colors.black,
            ),
          ),
          //WISHLIST
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MongoDisplay();
                  },
                ),
              );
            },
            child: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          ),
          //PROFILE
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return TravelScreen();
              //     },
              //   ),
              // );
            },
            child: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
