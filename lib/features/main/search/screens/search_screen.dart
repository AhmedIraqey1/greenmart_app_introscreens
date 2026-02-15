import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widgets/product_card.dart';
import 'package:greenmart/core/widgets/text_input_feild.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  @override
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size(400, 5), child: Container()),
        backgroundColor: AppColors.background,
        leading: IconButton(
          focusNode: focusNode,
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: TextInputFeild(
              hintText: 'Search Store',
              icon: Icon(Icons.search),
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 20,
          // childAspectRatio: .78,
          mainAxisExtent: 260,
        ),
        itemBuilder: (context, index) {
          return ProductCard(model: offers[index]);
        },
        itemCount: offers.length,
      ),
    );
  }
}
