import 'package:cocktails_project/helpers/platform_aware_asset_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile_page';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Container(
              width: 180.0,
              height: 180.0,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/Culture-Success-Meme-Kid.jpg',
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Text('Phitchapha Lertsiravarameth',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 8.0),
          Text('lertsiravaramet_p@silpakorn.edu',
              style: Theme.of(context).textTheme.headline6),
        ],
      ),
    );
  }
}
