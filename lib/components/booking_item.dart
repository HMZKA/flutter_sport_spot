import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_svg/svg.dart';

class BookingItem extends StatelessWidget {
  const BookingItem({super.key, this.model});
  final dynamic model;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: greyColor,
                  backgroundImage: AssetImage(model["image"]),
                ),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: greyColor,
                  child: SvgPicture.asset(
                    model["icon"],
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 7,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model["title"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    model["date"],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
          ],
        ));
  }
}
