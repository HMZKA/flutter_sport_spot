import 'package:flutter/material.dart';

import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

PreferredSizeWidget myAppBar(
    {Widget? title,
    List<Widget>? actions,
    Widget? leading,
    bool? centerTitle}) {
  return AppBar(
    title: title,
    leading: leading,
    actions: actions,
    centerTitle: centerTitle ?? false,
  );
}

Widget textIcon(
  context, {
  required String text,
  required Widget icon,
  required TextStyle? textStyle,
  CrossAxisAlignment? crossAxisAlignment,
  TextBaseline? textBaseline,
}) {
  return Row(
    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.end,
    textBaseline: textBaseline,
    children: [
      icon,
      SizedBox(
        width: 1.w,
      ),
      Expanded(
        child: Text(
          text,
          maxLines: 2,
          style: textStyle,
        ),
      )
    ],
  );
}

Widget courtItem(context, model) {
  return Container(
    width: 35.w,
    padding: EdgeInsets.symmetric(vertical: 1.h),
    decoration: BoxDecoration(
        border: Border.all(
            color: model["isSelected"] ? greenColor : Colors.transparent),
        borderRadius: BorderRadius.circular(4),
        color: model["isSelected"] ? greenColor.withAlpha(100) : greyColor),
    child: Column(
      children: [
        SvgPicture.asset(model["image"]),
        SizedBox(
          height: 1.h,
        ),
        Expanded(
          child: Text(
            model["title"],
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
