import 'package:flutter/cupertino.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<StatefulWidget> createState() => _GameState();
}

class _GameState extends State<GamePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("게임 탭")
    );
  }

}