import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.vol,
    required this.price,
  });
  final String image;
  final String name;
  final String vol;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 30,
            children: [
              Image.asset(image, width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$name', style: TextStyles.captionB),
                  Text(
                    '$vol',
                    style: TextStyles.caption.copyWith(
                      color: AppColors.iconsColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text('\$$price', style: TextStyles.captionB),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.open, width: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
