import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:sizer/sizer.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
            width: 75.w,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.search),
                  hintText: "Search",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none),
                  fillColor: greyColor,
                  filled: true),
            )),
        Container(
          decoration: BoxDecoration(color: greyColor),
          padding: const EdgeInsets.all(20),
          child: Icon(
            Icons.filter_list_outlined,
            color: greenColor,
            size: 25,
          ),
        )
      ],
    );
  }
}
