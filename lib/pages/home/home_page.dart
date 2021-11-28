import 'package:cocktails_project/helpers/platform_aware_asset_image.dart';
import 'package:cocktails_project/pages/cocktails/cocktail_page.dart';
import 'package:cocktails_project/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _selectedDrawerItemIndex = 0;

  final _pageDataList = [
    {
      'icon': Icons.fastfood,
      'title': 'Drinks',
      'page': CocktailPage(),
    },
    {
      'icon': Icons.person,
      'title': 'Profile',
      'page': ProfilePage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDataList[_selectedDrawerItemIndex]['title'] as String),
        /*actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],*/
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.background,
                  ],
                ),
                //color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(37.5),
                      child: PlatformAwareAssetImage(
                        assetPath: 'assets/images/Culture-Success-Meme-Kid.jpg',
                        width: 75.0,
                        height: 75.0,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 6.0),

                ],
              ),
            ),
            for (var item in _pageDataList)
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      color: item == _pageDataList[_selectedDrawerItemIndex]
                          ? Theme.of(context).accentColor
                          : null,
                    ),
                    SizedBox(width: 8.0),
                    Text(item['title'] as String),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _selectedDrawerItemIndex =
                        _pageDataList.indexWhere((element) {
                          return item == element;
                        });
                  });
                  Navigator.of(context).pop();
                },
                selected: item == _pageDataList[_selectedDrawerItemIndex],
              ),
          ],
        ),
      ),
      body: Container(
        child: _pageDataList[_selectedDrawerItemIndex]['page'] as Widget,
      ),
    );
  }
}
