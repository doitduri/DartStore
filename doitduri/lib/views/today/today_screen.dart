import 'package:flutter/cupertino.dart';

import 'today_page.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return const TodayPage();
      },
    );
  }
}