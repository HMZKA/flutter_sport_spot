import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/booking_item.dart';

import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/components/nearbyactivity_item.dart';
import 'package:flutter_sport_spot/components/newbooking_item.dart';
import 'package:flutter_sport_spot/components/offer_item.dart';
import 'package:flutter_sport_spot/components/smooth_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

class HomeScreen extends GetResponsiveView {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: SvgPicture.asset(MyIcons.appbarTitle),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(MyIcons.notificationIcon))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "My Booking",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      BookingItem(model: bookingItems[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 1.5.h,
                      ),
                  itemCount: bookingItems.length),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3.h),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(161, 207, 240, 0.5),
                        Color.fromRGBO(66, 201, 142, 0.3),
                        Color.fromRGBO(44, 179, 0, 0.39)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                child: Row(
                  children: [
                    Image.asset("assets/images/wing.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Place any Ads here",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Text("See more",
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Center(
                  child: MySmoothPage(
                controller: PageController(),
              )),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h),
                child: Text(
                  "Offers",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: 25.h,
                child: ListView.separated(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 1.w,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return const OfferItem();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.h, bottom: 1.h),
                child: Text(
                  "New Added",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: 25.h,
                child: ListView.separated(
                  itemCount: newAdded.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 2.w,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return NewBookingAddedItem(model: newAdded[index]);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.h, bottom: 1.h),
                child: Text(
                  "Near By Activities",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      NearByActivityItems(model: nearActivities[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 1.7.h,
                      ),
                  itemCount: nearActivities.length)
            ],
          ),
        ),
      ),
    );
  }
}
