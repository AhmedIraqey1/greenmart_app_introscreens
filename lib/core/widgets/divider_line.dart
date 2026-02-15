import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey[300], // لون الخط
      thickness: 1, // سمك الخط
      indent: 20, // مسافة بادئة من الشمال
      endIndent: 20, // مسافة من اليمين
    );
  }
}
