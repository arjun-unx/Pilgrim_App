import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/travel/utiliies_travel/themeColors.dart';
import 'package:pilgrimage_app/screen/travel/utiliies_travel/themeStyles.dart';

class TicketCard extends StatefulWidget {
  // const TicketCard({Key? key}) : super(key: key);

  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final String totalTime;
  final bool ticketType;

  TicketCard({
    required this.arrivalTime,
    required this.departureTime,
    required this.destinationCode,
    required this.originCode,
    required this.price,
    required this.ticketType,
    required this.totalTime,
  });

  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ThemeColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: ThemeColors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 1),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                  child: Column(
                    children:  [
                      //PRICE
                      Row(
                        children: [
                          Text(
                            '\$${widget.price}',
                            style: ThemeStyles.ticketPrice,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //DATE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monday , 28 th Feb',
                            style: ThemeStyles.greyStyle,
                          ),
                          Text(
                            'Monday , 28 th Feb',
                            style: ThemeStyles.greyStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //ARRIVAL $ DESTINATION CODE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.originCode}',
                            style: ThemeStyles.mainBlackTextStyle,
                          ),
                          Text(
                            '${widget.destinationCode}',
                            style: ThemeStyles.mainBlackTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //ARRIVAL $ DESTINATION TIME
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.departureTime}',
                            style: ThemeStyles.subBlackTextStyle,
                          ),
                          Text(
                            '${widget.arrivalTime}',
                            style: ThemeStyles.subBlackTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //FLIGHT ICON
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.blur_on,
                              color: Colors.grey,
                            ),
                            Text(
                              '--------------',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.flight_takeoff,
                              color: Colors.grey,
                            ),
                            Text(
                              '--------------',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.blur_on,
                              color: Colors.grey,
                            ),
                            // Icon(
                            //   Icons.flight_takeoff,
                            //   color: Colors.grey,
                            // ),
                            // Text(
                            //   '--------------',
                            //   style: TextStyle(color: Colors.grey),
                            // ),
                            // Icon(
                            //   Icons.arrow_right,
                            //   color: Colors.grey,
                            // ),
                            // Text(
                            //   '--------------',
                            //   style: TextStyle(color: Colors.grey),
                            // ),
                            // Icon(
                            //   Icons.flight_land,
                            //   color: Colors.grey,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //TOTAL TIME
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${widget.totalTime}',
                            style: ThemeStyles.greyStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.ticketType ? ThemeColors.orange : Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  height: 70,
                  width: 100,
                  child: widget.ticketType
                      ? Center(
                    child: Text(
                      'TOP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                      : Center(
                    child: Text(
                      'MED',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
