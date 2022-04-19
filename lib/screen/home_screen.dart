import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilgrimage_app/components/sidebar.dart';
import 'package:pilgrimage_app/models/Temples_History.dart';
import 'package:pilgrimage_app/models/populars';
import 'package:pilgrimage_app/models/recommended_model.dart';
import 'package:pilgrimage_app/widgets/nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String homescreen_id = 'tohomepage';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: Builder(builder: (context) {
          return Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  height: 57.6,
                  margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          height: 57.6,
                          width: 57.6,
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            color: Color(0x080a0928),
                          ),
                          child: SvgPicture.asset('assets/svg/menu.svg'),
                        ),
                      ),
                      Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x080a0928),
                        ),
                        child: SvgPicture.asset('assets/svg/search.svg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 28.8),
                  child: Text(
                    'Unleash\nthe Spirit',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 37.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.only(left: 14.4, top: 28.8),
                  child: DefaultTabController(
                    length: 4,
                    child: TabBar(
                      labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                      indicatorPadding:
                          EdgeInsets.only(left: 14.4, right: 14.4),
                      isScrollable: true,
                      labelColor: Color(0xFF000000),
                      unselectedLabelColor: Color(0xFF8a8a8a),
                      labelStyle: TextStyle(
                        fontFamily: 'SourceSansPro-LightItlalic',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontFamily: 'SourceSansPro-LightItlalic',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text('Recommended'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('Popular'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('New Destination'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('Hidden Gems'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 218.4,
                  margin: EdgeInsets.only(top: 16),
                  child: PageView(
                      physics: BouncingScrollPhysics(),
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          recommendations.length,
                          (int index) => Container(
                                margin: EdgeInsets.only(right: 28.8),
                                width: 333.6,
                                height: 218.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.6),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        recommendations[index].image!),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 19.2,
                                      left: 19.2,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.8),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 19.2,
                                            sigmaY: 19.2,
                                          ),
                                          child: Container(
                                            height: 36,
                                            padding: EdgeInsets.only(
                                              left: 1.72,
                                              right: 14.4,
                                            ),
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/svg/travel.svg',
                                                  color: Colors.white70,
                                                ),
                                                SizedBox(
                                                  width: 9.52,
                                                ),
                                                Text(
                                                  recommendations[index].name!,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                      fontSize: 12.8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.8, top: 28.8),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: recommendations.length,
                    effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xFF8a8a8a),
                        dotColor: Color(0xFFababab),
                        dotHeight: 4.8,
                        dotWidth: 6,
                        spacing: 4.8),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 28.8, right: 28.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Popular Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Text(
                        'Show All',
                        style: TextStyle(
                          fontSize: 12.8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8a8a8a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50.4,
                  margin: EdgeInsets.only(top: 6),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      populars.length,
                      (int index) => Container(
                        // margin: EdgeInsets.only(right: 28.8),
                        width: 5.6,
                        height: 10.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            alignment: Alignment.topLeft,
                            //fit: BoxFit.cover,
                            image: NetworkImage(populars[index].image!),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(67.0, 25.0, 0.0, 0.0),
                          child: Text(
                            populars[index].color!,
                            style: TextStyle(
                                color: Colors.brown[300],
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28.8, bottom: 16.8),
                  height: 124.8,
                  child: ListView.builder(
                      itemCount: sites.length,
                      padding: EdgeInsets.only(left: 28.8, right: 12),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 124.8,
                          width: 188.4,
                          margin: EdgeInsets.only(right: 16.8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(sites[index].image!),
                              )),
                        );
                      }),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
