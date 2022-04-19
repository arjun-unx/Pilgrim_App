import 'package:flutter/material.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  const BottomNavigationBarTravel({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Navigator.push(context, MaterialPageRoute(builder: (context){
      //   return screen2();
      // }))
    });
  }

  var bottomNavStyle = const TextStyle(
      fontFamily: 'SourceSansPro', fontSize: 12, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.4,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(1.0),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.article,
              color: Colors.red,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.luggage,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.luggage,
              color: Colors.red,
            ),
            label: 'Travel',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              color: Colors.red,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
