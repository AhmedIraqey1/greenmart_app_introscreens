import 'package:flutter/material.dart';

import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,

      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 234, 233, 233),
            blurRadius: 10,

            offset: Offset(3, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Align(
              alignment: Alignment.center,
              child: Expanded(child: Image.asset(model.image)),
            ),
            SizedBox(height: 20),
            Text(model.name, style: TextStyles.button),
            Text(
              model.weight,
              style: TextStyles.caption.copyWith(color: AppColors.iconsColor),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(model.price, style: TextStyles.button),
                Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: AppColors.background),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
