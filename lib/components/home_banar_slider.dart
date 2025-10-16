import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBanarSlider extends StatelessWidget {
  const HomeBanarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banarSlider = [
      'assets/images/slider/move1.jpg',
      'assets/images/slider/move2.jpg',
      'assets/images/slider/move3.jpg',
      'assets/images/slider/move4.jpg',
      'assets/images/slider/move5.jpg',
      'assets/images/slider/move6.jpg',
      'assets/images/slider/move7.jpg',
    ];
    return CarouselSlider.builder(
      itemCount: banarSlider.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(banarSlider[index]),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              const BoxShadow(
                color: Colors.black54,
                offset: Offset(1, 1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: double.infinity,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 6),

        // enlargeCenterPage: true,
        initialPage: 0,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 2),
      ),
    );
  }
}
