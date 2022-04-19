
class travelCategory {
  final int travelCategoryId;
  final String travelName;
  travelCategory(
      {required this.travelCategoryId,
      required this.travelName,});
}

final trainCategory = travelCategory(
  travelCategoryId: 0,
  travelName: 'TRAVEL',
);
final busCategory = travelCategory(
  travelCategoryId: 1,
  travelName: 'HOTEL',
);
final planeCategory = travelCategory(
  travelCategoryId: 2,
  travelName: 'VOYAGE',
);
final travelCategories = [
  trainCategory,
  busCategory,
  planeCategory,
];
