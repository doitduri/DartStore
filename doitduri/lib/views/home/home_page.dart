import 'package:doitduri/views/enums.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.today), label: "투데이"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill), label: "게임"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_stack_3d_up_fill), label: "앱"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller_solid), label: "Arcade"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: "검색")
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return TabMenu.values.firstWhere((menu) => menu.index == index).widget;
            },
          );
        }
    );
  }
}