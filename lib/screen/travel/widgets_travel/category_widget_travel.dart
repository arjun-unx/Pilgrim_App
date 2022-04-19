import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/travel/models_travel/category_travel.dart';
import 'package:pilgrimage_app/screen/travel/services_travel/app_state.dart';
import 'package:pilgrimage_app/screen/travel/utiliies_travel/themeColors.dart';
import 'package:provider/provider.dart';

class travelCategoryWidget extends StatelessWidget {
  final travelCategory travelcategory;
  const travelCategoryWidget({Key? key, required this.travelcategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final travelappState = Provider.of<travelAppState>(context);
    final isSelected =
        travelappState.selectedCategoryId == travelcategory.travelCategoryId;
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          travelappState.updateCategory(travelcategory.travelCategoryId);
        }
      },
      child: Container(
        width: 110,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            travelcategory.travelName,
            style: isSelected
                ? TextStyle(color: ThemeColors.white)
                : TextStyle(color: ThemeColors.black),
          ),
        ),
      ),
    );
  }
}
