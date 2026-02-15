import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/styles/text_style.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.svg, required this.text});
  final String svg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 15,
            children: [
              SvgPicture.asset(svg, width: 25),
              Text('$text', style: TextStyles.captionB),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.open, width: 10),
          ),
        ],
      ),
    );
  }
}
