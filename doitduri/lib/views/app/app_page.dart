import 'package:flutter/cupertino.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<AppPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("앱 피드 탭")
    );
  }

}