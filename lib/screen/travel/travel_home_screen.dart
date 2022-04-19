import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pilgrimage_app/screen/travel/components_travel/flightTickets.dart';
import 'package:pilgrimage_app/screen/travel/components_travel/travel_details.dart';
import 'package:pilgrimage_app/screen/travel/components_travel/tabs.dart';
import 'package:pilgrimage_app/screen/travel/map_travel/map_travel.dart';
import 'package:pilgrimage_app/screen/travel/utiliies_travel/themeColors.dart';

class travelHomeScreen extends StatefulWidget {
  @override
  _travelHomeScreenState createState() => _travelHomeScreenState();
}

class _travelHomeScreenState extends State<travelHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        //background GREY
        Container(
          height: 190,
          decoration: BoxDecoration(
            color: ThemeColors.grey,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        //TEXT on top of GREY background
        Container(
          child: Column(
            children: [
              /*Old Travel UI*/
              // SizedBox(height: 10,),
              // travelDetails(),
              // SizedBox(height: 10,),
              // travelMyTabs(),
              // SizedBox(height: 10,),
              // travelFlightTickets(),
              /*New one*/
              SizedBox(
                height: 500,
                child: MapTravel(),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
