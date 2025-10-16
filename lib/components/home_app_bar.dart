import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/profiel/unnamed.jpg"),
          ),
          RichText(
            text: const TextSpan(
              text: "Movies",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: "Show",
                  style: TextStyle(color: Colors.deepOrangeAccent),
                ),
              ],
            ),
          ),
          const Icon(Icons.menu_outlined, color: Colors.white, size: 35),
        ],
      ),
    );
  }
}
