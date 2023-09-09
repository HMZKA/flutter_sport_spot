import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/search_bar.dart';
import 'package:flutter_sport_spot/screens/club_screen.dart';
import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_sport_spot/components/my_choice_chip.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/components/my_images.dart';
import 'package:flutter_sport_spot/screens/filter_screen.dart';
import 'package:flutter_sport_spot/components/nearbyactivity_item.dart';
import 'package:flutter_sport_spot/components/newbooking_item.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyChoiceChip(
                  selected: false, label: "GYM", avatarPath: MyIcons.gymIcon),
              MyChoiceChip(
                  selected: true,
                  label: "Club",
                  avatarPath: MyIcons.stadiumIcon),
              MyChoiceChip(
                  selected: false,
                  label: "Camps",
                  avatarPath: MyIcons.campIcon),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MySearchBar(),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stadiums",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(const FilterScreen());
                        },
                        child: Text(
                          "See all",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: Colors.grey.shade400),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      courtItem(context, courts[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 6,
                  ),
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
                child: Text(
                  "Near By Clubs",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: 27.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => NewBookingAddedItem(
                            model: MyImages.nearbyImages[index],
                            children: [
                              Text(
                                "Paddington Recreation Ground",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              textIcon(context,
                                  text:
                                      "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE",
                                  icon: SvgPicture.asset(MyIcons.locationIcon),
                                  textStyle:
                                      Theme.of(context).textTheme.titleSmall,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic)
                            ]),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 7,
                        ),
                    itemCount: MyImages.nearbyImages.length),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
                child: Text(
                  "Clubs List",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: clubList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 1.7.h,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(ClubScreen(
                            title: clubList[index]["title"],
                            image: clubList[index]["image"]));
                      },
                      child: NearByActivityItems(model: clubList[index]));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
