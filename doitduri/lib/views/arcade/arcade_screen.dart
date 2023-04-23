import 'package:flutter/cupertino.dart';

import 'arcade_page.dart';

class ArcadeScreen extends StatelessWidget {
  const ArcadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return const ArcadePage();
      },
    );
  }
}