import 'package:flutter/material.dart';
import 'package:pilgrimage_app/components/categorySelector.dart';
import 'package:pilgrimage_app/components/newsCarousel.dart';
import 'package:pilgrimage_app/components/tiledNewsView.dart';
import 'package:pilgrimage_app/components/topbar.dart';
import 'package:pilgrimage_app/components/welcomeWidget.dart';
import 'package:pilgrimage_app/widgets/nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsFeed extends StatefulWidget {
  static String id='/tonewsfeed';

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _pageController = PageController(viewportFraction: 1.2);
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: Container(
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(),
                        SizedBox(height:10),
                        WelcomeWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  NewsCarousel(),
                  Padding(
                    padding: EdgeInsets.only(left: 28.8, top: 28.8),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFF8a8a8a),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CategorySelector(),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TiledNewsView()],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
