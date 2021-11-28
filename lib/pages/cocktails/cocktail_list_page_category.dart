import 'package:cocktails_project/models/cocktail_item.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page_by_category.dart';
import 'package:cocktails_project/services/api.dart';
import 'package:flutter/material.dart';
class CocktailListPageCategory extends StatefulWidget {
  static const routeName = '/cocktail_list_page_category';
  const CocktailListPageCategory({Key? key}) : super(key: key);

  @override
  _CocktailListPageCategoryState createState() => _CocktailListPageCategoryState();
}

class _CocktailListPageCategoryState extends State<CocktailListPageCategory> {
  List <String> category = ['Beer', 'Cocoa', 'Cocktail', 'Coffee / Tea','Homemade Liqueur','Ordinary Drink', 'Punch / Party Drink','Shot', 'Soft Drink / Soda', 'Other/Unknown'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: category.length,
      itemBuilder: (BuildContext context, int index) {
        var cocktailItem = category[index];

        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(8.0),
          elevation: 5.0,
          shadowColor: Colors.black.withOpacity(0.2),
          child: InkWell(
            onTap: () => _handleClickCocktailItem(cocktailItem),
            child: Row(
              children: <Widget>[
                Text(category[index]),
                // Expanded(
                //   child: Container(
                //     padding: EdgeInsets.all(10.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: <Widget>[
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: <Widget>[
                //             Text(
                //               cocktailItem.strDrink,
                //               style: GoogleFonts.prompt(fontSize: 20.0),
                //             ),
                //             Text(
                //               '${cocktailItem.strCategory.toString()} บาท',
                //               style: GoogleFonts.prompt(fontSize: 15.0),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  _handleClickCocktailItem(String category) async {
    var listCocktail = await _loadCocktaills(category);
    Navigator.pushNamed(
      context,
      CocktailListPageByCategory.routeName,
      arguments: listCocktail

    );
  }
  Future<List<CocktailItem>> _loadCocktaills(String category) async {
    List list = await Api().fetch('api/json/v1/1/filter.php', queryParams : {'c': category});
    var cocktaillList = list.map((item) => CocktailItem.fromJson(item)).toList();
    return cocktaillList;
  }
}
