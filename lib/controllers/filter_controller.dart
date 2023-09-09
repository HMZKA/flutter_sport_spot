import 'package:flutter_sport_spot/constants.dart';

import 'package:get/get.dart';

class FilterController extends GetxController {
  List courtsList = [];
  List bottomSheetList = [];
  Set<String> filteredItems = {};

  @override
  void onInit() {
    courtsList = courts.map((e) => Map.of(e)).toList();
    super.onInit();
  }

  void toggleItemSelection(index) {
    bottomSheetList = [];
    if (courtsList[index]["isSelected"]) {
      courtsList[index]["isSelected"] = false;
      filteredItems.remove(courtsList[index]["title"]);
    } else {
      courtsList[index]["isSelected"] = true;
      filteredItems.add(courtsList[index]["title"]);
    }
    updateBottomSheetList();
    update();
  }

  void updateBottomSheetList() {
    for (var element in stadiumList) {
      if (filteredItems.contains(element["type"])) {
        bottomSheetList.add(element);
      }
    }
    update();
  }
}
