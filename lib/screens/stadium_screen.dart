import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_sport_spot/components/my_chip.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/components/my_images.dart';
import 'package:flutter_sport_spot/components/sapcer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class StadiumScreen extends StatelessWidget {
  const StadiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        MyImages.stadiumLarge,
                        width: SizerUtil.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    expandedHeight: 35.h,
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Paddington Recreation Ground",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(
                                width: 15.w,
                                child: textIcon(context,
                                    text: "4.5",
                                    icon: const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    textStyle: TextStyle(
                                        fontSize: 10.sp, color: Colors.grey)),
                              ),
                            ],
                          ),
                          const MySpacer(
                            height: 1,
                          ),
                          Text(
                            "5x5 football fields",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const MySpacer(height: 0.5),
                          textIcon(context,
                              text: "20 square meters",
                              icon: SvgPicture.asset(MyIcons.squareIcon),
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey)),
                          const MySpacer(height: 0.5),
                          textIcon(context,
                              text: "10,000 ppl",
                              icon: SvgPicture.asset(MyIcons.chairIcon),
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey)),
                          const MySpacer(height: 2),
                          Card(
                              shadowColor: Colors.black26,
                              elevation: 9.5,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.0.w, vertical: 1.h),
                                child: Row(children: [
                                  SvgPicture.asset(MyIcons.threePersonsIcon),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Number of teams  2",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(color: Colors.black),
                                  ),
                                ]),
                              )),
                          const MySpacer(height: 2),
                          Text(
                            "Spectator Amenities",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const MySpacer(height: 1),
                          Wrap(
                            children: [
                              MyChip(
                                  title: "Restrooms",
                                  avatar:
                                      SvgPicture.asset(MyIcons.restroomIcon)),
                              MyChip(
                                  title: "Restrooms",
                                  avatar:
                                      SvgPicture.asset(MyIcons.restroomIcon)),
                              MyChip(
                                  title: "Seating areas",
                                  avatar: SvgPicture.asset(MyIcons.seatIcon)),
                              MyChip(
                                  title: "Seating areas",
                                  avatar: SvgPicture.asset(MyIcons.seatIcon)),
                              MyChip(
                                  title: "Concession stands",
                                  avatar: SvgPicture.asset(MyIcons.windowIcon)),
                              MyChip(
                                  title: "Seating areas",
                                  avatar: SvgPicture.asset(MyIcons.seatIcon)),
                              MyChip(
                                  title: "Coffee shop",
                                  avatar: SvgPicture.asset(MyIcons.coffeeIcon)),
                            ],
                          ),
                          const MySpacer(height: 2),
                          Text(
                            "Additional Services",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 1.w),
                            itemCount: services.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 5),
                            itemBuilder: (context, index) => textIcon(context,
                                text: services[index]["title"],
                                icon: SvgPicture.asset(services[index]["icon"]),
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: Colors.grey)),
                          ),
                          const MySpacer(height: 2),
                          Text(
                            "Summary",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const MySpacer(height: 1),
                          Text(
                            "Over 370 fitness classes per week - there is something for everyone at South Downs Leisure. Affordable Fitness Package.Over 370 fitness classes per week - there is something for everyone at South Downs Leisure. Affordable Fitness Package everyone at South Downs Leisure. Affordable Fitness Package",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.5.h),
              width: SizerUtil.width,
              height: 8.h,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Book"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
