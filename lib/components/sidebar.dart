import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pilgrimage_app/screen/profile page/profilepage.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      child: ListView(
        padding: padding,
        children: [
          const SizedBox(
            height: 60,
          ),
          buildMenuItem(
            text: 'My Account',
            icon: Icons.account_circle,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'Notifications',
            icon: Icons.notifications,
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'Gift Cards',
            icon: Icons.card_giftcard,
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'My Rewards',
            icon: CupertinoIcons.gift,
          ),
          const SizedBox(
            height: 24,
          ),
          Divider(
            color: Colors.black12,
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(height: 2),
          buildMenuItem(
            text: 'Settings',
            icon: Icons.settings,
          ),
          const SizedBox(height: 2),
          buildMenuItem(
            text: 'Log out',
            icon: Icons.logout,
            onClicked: () => selectedItem(context, 5),
          )
        ],
      ),
    ));
  }
}

Widget buildMenuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ),
      );
      break;

    case 5:
      FirebaseAuth.instance.signOut();
  }
}
