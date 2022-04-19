import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/travel/utiliies_travel/themeStyles.dart';

class travelDetails extends StatefulWidget {
  const travelDetails({Key? key}) : super(key: key);

  @override
  _travelDetailsState createState() => _travelDetailsState();
}

class _travelDetailsState extends State<travelDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Plan Your Journey',
                style: ThemeStyles.headingTextStyle,
              ),
              Text(
                'Tue , March 1',
                style: ThemeStyles.travelDateTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
