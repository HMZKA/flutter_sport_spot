import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/components/search_bar.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/components/my_map.dart';
import 'package:flutter_sport_spot/components/nearbyactivity_item.dart';
import 'package:flutter_sport_spot/components/smooth_page.dart';
import 'package:flutter_sport_spot/screens/stadium_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    var controller = PageController();

    return Scaffold(
      appBar: myAppBar(title: Text(title), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
              child: const MySearchBar(),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 35.h,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: 4,
                    itemBuilder: (context, index) => Image.asset(
                      image,
                      width: SizerUtil.width,
                      height: 35.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: MySmoothPage(controller: controller),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 2.w),
              child: Text(
                "About the club",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                  "Over 370 fitness classes per week - there is something for everyone at South Downs Leisure. Affordable Fitness PackageOver 370 fitness classes per week - there is something for everyone at South Downs Leisure. Affordable Fitness Package everyone at South Downs Leisure. Affordable Fitness Package",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.5.h),
              child: Text(
                "Location",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
              ),
              child: textIcon(context,
                  text: "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE",
                  icon: SvgPicture.asset(MyIcons.locationIcon),
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: SizedBox(
                  height: 40.h, width: SizerUtil.width, child: const MyMap()),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.5.h),
              child: Text(
                "Stadiums List",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
              ),
              child: ListView.separated(
                itemCount: stadiumList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                        model: stadiumList[index],
                        children: [
                          Text(
                            stadiumList[index]["title"],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            stadiumList[index]["type"],
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
