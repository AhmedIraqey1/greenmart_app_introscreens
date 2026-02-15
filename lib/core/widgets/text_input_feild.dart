import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  const TextInputFeild({super.key, required this.hintText, this.icon, this.focusNode});
  final String hintText;
  final Icon? icon;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(prefixIcon: icon, hintText: hintText),
      focusNode:focusNode ,
    );
  }
}
