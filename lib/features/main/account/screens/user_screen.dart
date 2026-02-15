import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';

import 'package:greenmart/core/widgets/divider_line.dart';
import 'package:greenmart/features/auth/pages/login_screen.dart';

import 'package:greenmart/features/main/account/widgets/vetical_card.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 30, 30, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(50),
                        child: Image.asset(AppImages.iraqey, width: 70),
                      ),
                      Column(
                        spacing: 0,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 0,
                            children: [
                              Text('Ahmed Iraqey', style: TextStyles.captionB),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(AppIcons.edit),
                              ),
                            ],
                          ),
                          Text(
                            'iraqey@gmail.com',
                            style: TextStyles.caption.copyWith(
                              color: AppColors.iconsColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                DividerLine(),
                VerticalCard(svg: AppIcons.orders, text: 'Orders'),
                DividerLine(),
                VerticalCard(svg: AppIcons.details, text: 'My Details'),
                DividerLine(),
                VerticalCard(svg: AppIcons.location, text: 'Delivery Address'),
                DividerLine(),
                VerticalCard(svg: AppIcons.visa, text: 'Payment Methods'),
                DividerLine(),
                VerticalCard(svg: AppIcons.promoCord, text: 'Promo Cord'),
                DividerLine(),
                VerticalCard(
                  svg: AppIcons.notifecations,
                  text: 'Notifecations',
                ),
                DividerLine(),
                VerticalCard(svg: AppIcons.help, text: 'Help'),
                DividerLine(),
                VerticalCard(svg: AppIcons.about, text: 'About'),
                DividerLine(),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    pushReplacementTo(context, LoginScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F1F2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        SvgPicture.asset(AppIcons.logout),
                        Text(
                          'Log Out',
                          style: TextStyles.captionB.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
