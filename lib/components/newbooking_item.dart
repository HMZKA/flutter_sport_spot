import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NewBookingAddedItem extends StatelessWidget {
  const NewBookingAddedItem({super.key, required this.model, this.children});
  final dynamic model;
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Stack(children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          child: Image.asset(
            model["image"],
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          top: 130,
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: const Color.fromRGBO(217, 217, 217, 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children ??
                        [
                          Text(
                            model["title"],
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            model["location"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ]),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
