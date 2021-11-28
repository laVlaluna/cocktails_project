class CocktailItem {
  final String idDrink;
  final String strDrink;
  final String? strCategory;
  final String? strGlass;
  final String? strInstructions;
  // final String strInstructionsDE;
  // final String strInstructionsIT;
  final String strDrinkThumb;
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;

  CocktailItem({
    required this.idDrink,
    required this.strDrink,
    required this.strCategory,
    required this.strGlass,
    required this.strInstructions,
    // required this.strInstructionsDE,
    // required this.strInstructionsIT,
    required this.strDrinkThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strIngredient6,
    required this.strIngredient7,
    required this.strIngredient8,
    required this.strIngredient9,
    required this.strIngredient10,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    required this.strMeasure6,
    required this.strMeasure7,
    required this.strMeasure8,
    required this.strMeasure9,
    required this.strMeasure10,
  });

  factory CocktailItem.fromJson(Map<String, dynamic> json) {
    print(json['idDrink']);
    return CocktailItem(
      idDrink          :json['idDrink'],
      strDrink         :json['strDrink'],
      strCategory      :json['strCategory'],
      strGlass         :json['strGlass'],
      strInstructions  :json['strInstructions'],
      // strInstructionsDE:json['strInstructionsDE'],
      // strInstructionsIT:json['strInstructionsIT'],
      strDrinkThumb    :json['strDrinkThumb'],
      strIngredient1   :json['strIngredient1'],
      strIngredient2   :json['strIngredient2'],
      strIngredient3   :json['strIngredient3'],
      strIngredient4   :json['strIngredient4'],
      strIngredient5   :json['strIngredient5'],
      strIngredient6   :json['strIngredient6'],
      strIngredient7   :json['strIngredient7'],
      strIngredient8   :json['strIngredient8'],
      strIngredient9   :json['strIngredient9'],
      strIngredient10  :json['strIngredient10'],
      strMeasure1      :json['strMeasure1'],
      strMeasure2      :json['strMeasure2'],
      strMeasure3      :json['strMeasure3'],
      strMeasure4      :json['strMeasure4'],
      strMeasure5      :json['strMeasure5'],
      strMeasure6      :json['strMeasure6'],
      strMeasure7      :json['strMeasure7'],
      strMeasure8      :json['strMeasure8'],
      strMeasure9      :json['strMeasure9'],
      strMeasure10     :json['strMeasure10'],

    );
  }

  CocktailItem.fromJson2(Map<String, dynamic> json)
      :
        idDrink          =json['idDrink'],
        strDrink         =json['strDrink'],
        strCategory      =json['strCategory'],
        strGlass         =json['strGlass'],
        strInstructions  =json['strInstructions'],
        // strInstructionsDE=json['strInstructionsDE'],
        // strInstructionsIT=json['strInstructionsIT'],
        strDrinkThumb    =json['strDrinkThumb'],
        strIngredient1   =json['strIngredient1'],
        strIngredient2   =json['strIngredient2'],
        strIngredient3   =json['strIngredient3'],
        strIngredient4   =json['strIngredient4'],
        strIngredient5   =json['strIngredient5'],
        strIngredient6   =json['strIngredient6'],
        strIngredient7   =json['strIngredient7'],
        strIngredient8   =json['strIngredient8'],
        strIngredient9   =json['strIngredient9'],
        strIngredient10  =json['strIngredient10'],
        strMeasure1      =json['strMeasure1'],
        strMeasure2      =json['strMeasure2'],
        strMeasure3      =json['strMeasure3'],
        strMeasure4      =json['strMeasure4'],
        strMeasure5      =json['strMeasure5'],
        strMeasure6      =json['strMeasure6'],
        strMeasure7      =json['strMeasure7'],
        strMeasure8      =json['strMeasure8'],
        strMeasure9      =json['strMeasure9'],
        strMeasure10     =json['strMeasure10'];

  @override
  String toString() {
    return '$idDrink: Name $strDrink  Group $strCategory';
  }
}
