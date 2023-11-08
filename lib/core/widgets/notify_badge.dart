import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifyBadge extends StatelessWidget {
  final int count;
  const NotifyBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 45,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
