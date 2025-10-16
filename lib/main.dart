import 'package:flutter/material.dart';
import 'package:movies_app/providers/movie_provider.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/views/home_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MovieProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeView(),
    );
  }
}
