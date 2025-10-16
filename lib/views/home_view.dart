import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movie_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).addMovies(context);
    super.initState();
    // Any initialization code can go here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 230,
            flexibleSpace: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/slider/move1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1, 1),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(
                      red: 0,
                      blue: 0,
                      green: 0,
                      alpha: 0.7,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(
                          "assets/images/profiel/unnamed.jpg",
                        ),
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
                      const Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 1, color: Colors.black12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(
                              red: 0,
                              blue: 0,
                              green: 0,
                              alpha: 0.7,
                            ),
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 40),
                          Icon(Icons.search_rounded, color: Colors.white),
                          SizedBox(width: 20),
                          Text(
                            "Search any movie or serise",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
