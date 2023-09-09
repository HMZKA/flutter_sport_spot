import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/my_images.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.15, 0.75],
                  colors: [Colors.black, Colors.transparent])),
          child: Image.asset(
            MyImages.offersImage,
            width: MediaQuery.of(context).size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "Paddington Recreation Ground",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
