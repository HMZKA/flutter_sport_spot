import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/components/search_bar.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_sport_spot/components/nearbyactivity_item.dart';
import 'package:flutter_sport_spot/screens/stadium_screen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../controllers/filter_controller.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: const Text("Stadiums"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const MySearchBar(),
            Expanded(
                child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 7,
                  childAspectRatio: 1.3),
              itemCount: courts.length,
              itemBuilder: (context, index) => GetBuilder<FilterController>(
                init: FilterController(),
                builder: (con) => GestureDetector(
                    onTap: () {
                      con.toggleItemSelection(index);
                    },
                    child: courtItem(context, con.courtsList[index])),
              ),
            )),
            GetBuilder<FilterController>(
                init: FilterController(),
                builder: (controller) {
                  return SlidingUpPanel(
                    maxHeight: 50.h,
                    minHeight: 10.h,
                    panel: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                      child: ListView.separated(
                        itemCount: controller.bottomSheetList.length,
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 1.7.h,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(const StadiumScreen());
                            },
                            child: NearByActivityItems(
                                model: controller.bottomSheetList[index],
                                children: [
                                  Text(
                                    controller.bottomSheetList[index]["title"],
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    controller.bottomSheetList[index]["type"],
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  )
                                ]),
                          );
                        },
                      ),
                    ),
                    header: SizedBox(
                      width: SizerUtil.width,
                      height: 8.h,
                      child: Center(
                        child: Container(
                          width: 60.w,
                          height: 1.5.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                    collapsed: Container(
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          width: 60.w,
                          height: 1.5.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
