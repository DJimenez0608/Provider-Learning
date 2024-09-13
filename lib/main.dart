import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Pages/homePage.dart';
import 'package:provider_learning/Pages/postName.dart';
import 'package:provider_learning/Widgets/publicacion.dart';
import 'package:provider_learning/porviders/favoriteProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favoriteprovider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Homepage(),
      ),
    );
  }
}
