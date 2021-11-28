import 'package:cocktails_project/models/cocktail_item.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_details_page.dart';
import 'package:cocktails_project/services/api.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CocktailListPageByCategory extends StatefulWidget {
  static const routeName = '/cocktaill_list_page_by_category';

  const CocktailListPageByCategory({Key? key}) : super(key: key);

  @override
  _CocktailListPageByCategoryState createState() => _CocktailListPageByCategoryState();
}

class _CocktailListPageByCategoryState extends State<CocktailListPageByCategory> {

  late Future<List<CocktailItem>> _futureCocktaillList;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _futureCocktaillList = _loadCocktaills();
  // }

  @override
  Widget build(BuildContext context) {
    var cocktailList = ModalRoute.of(context)!.settings.arguments as List<CocktailItem>;
    return Scaffold(body: ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: cocktailList.length,
      itemBuilder: (BuildContext context, int index) {
        var cocktailItem = cocktailList[index];

        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(8.0),
          elevation: 5.0,
          shadowColor: Colors.black.withOpacity(0.2),
          child: InkWell(
            onTap: () => _handleClickCocktailItem(cocktailItem),
            child: Row(
              children: <Widget>[
                Image.network(
                  cocktailItem.strDrinkThumb,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Name: ${cocktailItem.strDrink}',
                              style: GoogleFonts.prompt(fontSize: 20.0),
                            ),
                            // Text(
                            //   'Category: ',
                            //   style: GoogleFonts.prompt(fontSize: 15.0),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),);

  }


  _handleClickCocktailItem(CocktailItem cocktailItem) async {
    var Cocktail = await _loadCocktaills(cocktailItem.idDrink);
    Navigator.pushNamed(
      context,
      CocktailDetailsPage.routeName,
      arguments: Cocktail[0],
    );
  }
  Future<List<CocktailItem>> _loadCocktaills(String id) async {
    List list = await Api().fetch('api/json/v1/1/lookup.php', queryParams : {'i': id});
    var cocktaillList = list.map((item) => CocktailItem.fromJson(item)).toList();
    return cocktaillList;
  }
}
