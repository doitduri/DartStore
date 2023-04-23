import 'package:flutter/cupertino.dart';

import 'search_page.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //   middle: Text("검색"),
      //   trailing: Icon(CupertinoIcons.person_alt_circle),
      // ),
      child: SearchPage()
    );
  }
}