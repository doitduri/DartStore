import 'package:flutter/cupertino.dart';

import 'app_page.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return const AppPage();
      },
    );
  }
}