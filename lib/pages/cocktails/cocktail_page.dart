import 'package:cocktails_project/models/cocktail_item.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page.dart';
import 'package:cocktails_project/services/api.dart';
import 'package:flutter/material.dart';

import 'cocktail_list_page_category.dart';
import 'cocktail_list_page_letter.dart';


class CocktailPage extends StatefulWidget {
  const CocktailPage({Key? key}) : super(key: key);

  @override
  _CocktailPageState createState() => _CocktailPageState();
}

class _CocktailPageState extends State<CocktailPage> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Sort by letter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Sort by Categoty',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _fetchCocktails,
        child: Icon(Icons.add),
      ),*/
      body: _selectedBottomNavIndex == 0
          ? CocktailListPageLetter()
          : CocktailListPageCategory()
      //     : Container(
      //   child: Center(
      //     child: Text('YOUR ORDER',
      //         style: Theme.of(context).textTheme.headline1),
      //   ),
      // ),
    );
  }

  // _fetchCocktails() async {
  //   try {
  //     var list = (await Api().fetch('api/json/v1/1/search.php', queryParams : {'f': 'a'})) as List<dynamic>;
  //     var cocktailList = list.map((item) => CocktailItem.fromJson(item)).toList();
  //     print('Number of cocktails: ${cocktailList.length}');
  //   } catch (e) {
  //     var msg = 'ERROR: $e';
  //     print(msg);
  //   }
  // }
}
