import 'package:cocktails_project/models/cocktail_item.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_list_page.dart';
import 'package:cocktails_project/services/api.dart';
import 'package:flutter/material.dart';

class CocktailListPageLetter extends StatefulWidget {
  static const routeName = '/cocktaill_list_page_letter';

  const CocktailListPageLetter({Key? key}) : super(key: key);

  @override
  _CocktailListPageLetterState createState() => _CocktailListPageLetterState();
}

class _CocktailListPageLetterState extends State<CocktailListPageLetter> {
  List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: letters.length,
      itemBuilder: (BuildContext context, int index) {
        var cocktailItem = letters[index];

        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(8.0),
          elevation: 5.0,
          shadowColor: Colors.black.withOpacity(0.2),
          child: InkWell(
            onTap: () => _handleClickCocktailItem(cocktailItem),
            child: Row(
              children: <Widget>[
                Text(letters[index]),
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

  _handleClickCocktailItem(String letter) async {
    var listCocktail = await _loadCocktaills(letter);
    Navigator.pushNamed(
      context,
      CocktailListPage.routeName,
      arguments: listCocktail,
    );
  }

  Future<List<CocktailItem>> _loadCocktaills(letter) async {
    List list = await Api()
        .fetch('api/json/v1/1/search.php', queryParams: {'f': letter});
    var cocktaillList =
        list.map((item) => CocktailItem.fromJson(item)).toList();
    return cocktaillList;
  }
}
