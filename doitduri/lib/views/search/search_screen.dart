import 'package:flutter/cupertino.dart';

import 'search_page.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return SearchPage();
      },
    );
  }
}