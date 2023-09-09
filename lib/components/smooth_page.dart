import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySmoothPage extends StatelessWidget {
  const MySmoothPage({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 4,
      effect: WormEffect(
          activeDotColor: greenColor,
          dotHeight: 10,
          dotWidth: 10,
          dotColor: const Color.fromARGB(255, 214, 214, 214)),
    );
  }
}
