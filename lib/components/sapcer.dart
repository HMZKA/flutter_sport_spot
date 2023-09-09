import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
    );
  }
}
