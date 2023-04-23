import 'package:flutter/cupertino.dart';

class ArcadePage extends StatefulWidget {
  const ArcadePage({super.key});

  @override
  State<StatefulWidget> createState() => _ArcadeState();
}

class _ArcadeState extends State<ArcadePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("아케이드 탭")
    );
  }

}