import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/main/cart/widgets/container_button.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.productNum});

  final int productNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerButton(
          borderColor: const Color.fromARGB(166, 167, 165, 165),
          iconColor: AppColors.iconsColor,
          icon: Icons.remove,
        ),
        Text('$productNum', style: TextStyles.body),
        ContainerButton(
          borderColor: AppColors.primary,
          iconColor: AppColors.primary,
          icon: Icons.add,
        ),
      ],
    );
  }
}
