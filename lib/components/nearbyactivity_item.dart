import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/components.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class NearByActivityItems extends StatelessWidget {
  const NearByActivityItems({super.key, required this.model, this.children});
  final dynamic model;
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: Image.asset(model["image"])),
          SizedBox(
            width: 1.4.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children ??
                  [
                    Text(
                      model["title"],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    model["type"] != null
                        ? textIcon(context,
                            text: model["type"],
                            icon: SvgPicture.asset(model["icon"]),
                            textStyle: Theme.of(context).textTheme.bodySmall)
                        : const SizedBox(),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    textIcon(context,
                        text: model["location"],
                        icon: SvgPicture.asset(MyIcons.locationIcon),
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.grey))
                  ],
            ),
          )
        ],
      ),
    );
  }
}
