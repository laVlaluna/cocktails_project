import 'package:cocktails_project/models/cocktail_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CocktailDetailsPage extends StatelessWidget {
  static const routeName = '/cocktail_details_page';

  const CocktailDetailsPage();

  @override
  Widget build(BuildContext context) {
    final cocktailItem =
        ModalRoute.of(context)!.settings.arguments as CocktailItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(cocktailItem.strDrink),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AspectRatio(
                aspectRatio: 3 / 2,
                child:
                    Image.network(cocktailItem.strDrinkThumb, fit: BoxFit.cover)

                // PlatformAwareAssetImage(
                //   assetPath: 'assets/images/${cocktailItem.image}',
                //   fit: BoxFit.cover,
                // ),
                /*child: Image.asset(
                'assets/images/${cocktailItem.image}',
                fit: BoxFit.cover,
              ),*/
                ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Name : ${cocktailItem.strDrink}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'Group : ${cocktailItem.strCategory}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'Glass : ${cocktailItem.strGlass}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'Instructions : ${cocktailItem.strInstructions}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure1 == null
                      ? SizedBox.shrink()
                      : Text(
                          'Ingredients  :    ${cocktailItem.strMeasure1}  ${cocktailItem.strIngredient1}',
                          style: GoogleFonts.prompt(fontSize: 20.0),
                        ),
                  cocktailItem.strMeasure2 == null
                      ? SizedBox.shrink()
                      : Text(
                          '                     ${cocktailItem.strMeasure2}  ${cocktailItem.strIngredient2}',
                          style: GoogleFonts.prompt(fontSize: 20.0),
                        ),
                  cocktailItem.strMeasure3 == null
                      ? SizedBox.shrink()
                      : Text(
                          '                     ${cocktailItem.strMeasure3}  ${cocktailItem.strIngredient3}',
                          style: GoogleFonts.prompt(fontSize: 20.0),
                        ),
                  cocktailItem.strMeasure4 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure4}  ${cocktailItem.strIngredient4}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure5 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure5}  ${cocktailItem.strIngredient5}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure6 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure6}  ${cocktailItem.strIngredient6}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure7 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure7}  ${cocktailItem.strIngredient7}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure8 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure8}  ${cocktailItem.strIngredient8}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure9 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure9}  ${cocktailItem.strIngredient9}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  cocktailItem.strMeasure10 == null
                      ? SizedBox.shrink()
                      :
                  Text(
                    '                     ${cocktailItem.strMeasure10}  ${cocktailItem.strIngredient10}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            if (false)
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'ชื่อเมนู: ${cocktailItem.strDrink}',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Text(
                        'ราคา: ${cocktailItem.strCategory.toString()} บาท',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              /*ElevatedButton(
                              onPressed: () {},
                              child: const Text('-', style: TextStyle(fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '123',
                                style: GoogleFonts.prompt(fontSize: 20.0),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('+', style: TextStyle(fontSize: 20)),
                            ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
