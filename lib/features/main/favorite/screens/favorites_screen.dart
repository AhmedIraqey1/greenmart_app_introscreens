import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/main/favorite/widgets/vertical_product_card.dart';
import 'package:greenmart/features/main/account/widgets/vetical_card.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: Text('Favorurite', style: TextStyles.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              VerticalProductCard(
                image: AppImages.sprite,
                name: 'Sprite Can',
                vol: '325ml',
                price: '1.50',
              ),
              Divider(),
              VerticalProductCard(
                image: AppImages.cokeD,
                name: 'Diet Coke Can',
                vol: '325ml',
                price: '5',
              ),
              Divider(),
              VerticalProductCard(
                image: AppImages.appleGrapJuice,
                name: 'Apple & Grape Juice',
                vol: '325ml',
                price: '10',
              ),
              Divider(),
              VerticalProductCard(
                image: AppImages.coke,
                name: 'Coca Cola Can',
                vol: '325ml',
                price: '2.50',
              ),
              Divider(),
              VerticalProductCard(
                image: AppImages.pepsi,
                name: 'Pepsi Can',
                vol: '325ml',
                price: '5.50',
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
