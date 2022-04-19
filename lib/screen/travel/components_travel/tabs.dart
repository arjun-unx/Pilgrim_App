import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/travel/models_travel/category_travel.dart';
import 'package:pilgrimage_app/screen/travel/services_travel/app_state.dart';
import 'package:pilgrimage_app/screen/travel/widgets_travel/category_widget_travel.dart';
import 'package:provider/provider.dart';


class travelMyTabs extends StatefulWidget {
  const travelMyTabs({Key? key}) : super(key: key);

  @override
  _travelMyTabsState createState() => _travelMyTabsState();
}

class _travelMyTabsState extends State<travelMyTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider <travelAppState>(
        create: (_) => travelAppState(),
        child: Consumer<travelAppState>(
          builder: (context,AppState,_)=>SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                child: Row(
                  children: [
                    for (final travelcategory in travelCategories)
                      travelCategoryWidget(
                        travelcategory: travelcategory ,
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
