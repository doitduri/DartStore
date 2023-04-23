import 'package:flutter/cupertino.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<StatefulWidget> createState() => _TodayState();
}

class _TodayState extends State<TodayPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("투데이 탭")
    );
  }

}