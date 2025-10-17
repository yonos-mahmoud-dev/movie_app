import 'package:flutter/material.dart';
import 'package:movies_app/components/custom_app_bar.dart';
import 'package:movies_app/components/movies_grid_view.dart';
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
      backgroundColor: Color(0XFF1C1C1C),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          MoviesGridView(),
        ],
      ),
    );
  }
}
