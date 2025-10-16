import 'package:flutter/material.dart';
import 'package:movies_app/components/home_app_bar.dart';
import 'package:movies_app/components/home_banar_slider.dart';
import 'package:movies_app/components/search_box.dart';
import 'package:movies_app/components/slider_opacity.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      expandedHeight: 230,
      flexibleSpace: Stack(
        children: [
          HomeBanarSlider(),
          SliderOpacity(),
          HomeAppBar(),
          SearchBox(),
        ],
      ),
    );
  }
}
