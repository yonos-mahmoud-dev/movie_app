import 'package:flutter/material.dart';

class SliderOpacity extends StatelessWidget {
  const SliderOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withValues(red: 0, blue: 0, green: 0, alpha: 0.7),
      ),
    );
  }
}
