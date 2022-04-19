import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pilgrimage_app/screen/home_screen.dart';
import 'package:pilgrimage_app/screen/Startpage/welcome_screen.dart';


class OnBoardingPage extends StatelessWidget {
  static String id='/toonboardingpage';
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
          body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
          image: buildImage('assets/images/pilrim pic2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Lorem ipsum dolor sit amet',
          body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
          image: buildImage('assets/images/pilgrim pic1.jpg'),
          decoration: getPageDecoration(),
        ),
        // PageViewModel(
        //   title: 'Simple UI',
        //   body: 'For enhanced reading experience',
        //   image: buildImage('assets/manthumbs.png'),
        //   decoration: getPageDecoration(),
        // ),
        // PageViewModel(
        //   title: 'Today a reader, tomorrow a leader',
        //   body: 'Start your journey',
        //   // footer: ButtonWidget(
        //   //   text: 'Start Reading',
        //   //   onClicked: () => goToHome(context),
        //   // ),
        //   image: buildImage('assets/learn.png'),
        //   decoration: getPageDecoration(),
        // ),
      ],
      done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip'),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Colors.pinkAccent,
      skipFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => WelcomeScreen()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    activeColor: Colors.pinkAccent,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}