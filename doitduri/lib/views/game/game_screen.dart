import 'package:flutter/cupertino.dart';

import 'game_page.dart';


class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return const GamePage();
      },
    );
  }
}