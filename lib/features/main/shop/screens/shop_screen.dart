import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/features/main/explore/screens/soda_screen.dart';
import 'package:greenmart/features/main/search/screens/search_screen.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';
import 'package:greenmart/features/main/shop/widgets/list_view_widgit.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CustomSvgPicture(path: AppIcons.greenCarrot, width: 43),
            CustomSvgPicture(path: AppIcons.greenMartGreen, width: 173),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22.0, 0, 22.0, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22),
                Hero(
                  tag: 'search',
                  child: Material(
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        pushTo(context, SearchScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: 52,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F1F2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Icon(Icons.search),
                            Text(
                              'Search Store',
                              style: TextStyle(color: AppColors.iconsColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Exclusive Offer', style: TextStyles.title),
                    TextButton(
                      onPressed: () {
                        pushTo(context, SodaScreen());
                      },
                      child: Text('See all'),
                    ),
                  ],
                ),
                ListViewWidget(list: offers),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Selling', style: TextStyles.title),
                    TextButton(
                      onPressed: () {
                        pushTo(context, SodaScreen());
                      },
                      child: Text('See all'),
                    ),
                  ],
                ),
                ListViewWidget(list: bestSelling),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
