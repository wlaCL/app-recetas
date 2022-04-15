import 'package:app_recetas/screens/breakfast_screen.dart';
import 'package:app_recetas/screens/dish_details.dart';
import 'package:app_recetas/screens/home_screen.dart';
import 'package:app_recetas/screens/recipe_details_more.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Recetas',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/breakfast': (context) => BreakFastScreen(),
        '/dish-details': (context) => DishDetailsScreen(),
        '/recipe_details-more': (context) => RecipeDetailsMore()
      },
      theme: ThemeData(
        fontFamily: "Roboto",
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
