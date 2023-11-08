import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgButton extends StatelessWidget {
  final String assetName;
  final double width;
  final double height;
  final Function onTap;
  final Color? color;

  const SvgButton({super.key, required this.assetName, required this.width, required this.height, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(
          'assets/svg/$assetName.svg',
          width: width,
          height: height,
          color: color,
        ),
      ),
    );
  }
}
