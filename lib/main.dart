import 'package:cocktails_project/pages/cocktails/cocktail_details_page.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page_by_category.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page_category.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page_letter.dart';
import 'package:cocktails_project/pages/home/home_page.dart';
import 'package:cocktails_project/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      //home: LoginPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        CocktailDetailsPage.routeName: (context) => const CocktailDetailsPage(),
        CocktailListPage.routeName: (context) => const CocktailListPage(),
        CocktailListPageByCategory.routeName: (context) => const CocktailListPageByCategory(),
        CocktailListPageCategory.routeName: (context) => const CocktailListPageCategory(),
        CocktailListPageLetter.routeName: (context) => const CocktailListPageLetter(),
    },
      initialRoute: HomePage.routeName,
    );
  }
}
