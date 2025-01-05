import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      thickness: 8,
      color: Colors.black.withOpacity(0.65 ),
    );
  }
}
