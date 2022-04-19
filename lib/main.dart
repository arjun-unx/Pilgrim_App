// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pilgrimage_app/components/utils.dart';
import 'package:pilgrimage_app/screen/Startpage/loginpage.dart';
import 'package:pilgrimage_app/screen/Startpage/onboarding_page.dart';
import 'package:pilgrimage_app/screen/Startpage/signuppage.dart';
import 'package:pilgrimage_app/screen/Startpage/verifyemail.dart';
import 'package:pilgrimage_app/screen/Startpage/welcome_screen.dart';
import 'package:pilgrimage_app/screen/home_screen.dart';
import 'package:pilgrimage_app/screen/newsFeed.dart';
import 'package:pilgrimage_app/screen/profile page/profilepage.dart';
import 'package:pilgrimage_app/screen/profile%20page/profilepage.dart';
import 'package:pilgrimage_app/screen/testing.dart';
import 'package:pilgrimage_app/screen/travel/travel_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingPage.id,
      theme: ThemeData(fontFamily: "Poppins"),
      /**/
      routes: {
        OnBoardingPage.id: (context) => StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return VerifyEmail();
                } else {
                  return OnBoardingPage();
                }
              },
            ),
        HomeScreen.homescreen_id: (context) => HomeScreen(),
        NewsFeed.id: (context) => NewsFeed(),
        TravelScreen.id: (context) => TravelScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        VerifyEmail.id: (context) => VerifyEmail(),
        ProfilePage.id: (context) => ProfilePage(),
        '/totestingpage': (context) => MongoDisplay(),
      },
    );
  }
}
