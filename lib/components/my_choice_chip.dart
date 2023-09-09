import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip(
      {super.key,
      required this.selected,
      required this.label,
      required this.avatarPath});
  final bool selected;
  final String label;
  final String avatarPath;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        padding: const EdgeInsets.all(7),
        selected: selected,
        disabledColor: Colors.white,
        label: Text(label),
        side:
            selected ? const BorderSide(color: Colors.green) : BorderSide.none,
        labelStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
        selectedColor: Colors.greenAccent.withOpacity(0.2),
        avatar: SvgPicture.asset(
          avatarPath,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ));
  }
}
