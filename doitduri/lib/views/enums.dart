import 'package:flutter/widgets.dart';
import 'package:doitduri/views/app/app_screen.dart';
import 'package:doitduri/views/arcade/arcade_screen.dart';
import 'package:doitduri/views/game/game_screen.dart';
import 'package:doitduri/views/search/search_screen.dart';
import 'package:doitduri/views/today/today_screen.dart';

enum TabMenu {
  today, game, app, arcade, search;
}

extension TabMenuExtension on TabMenu {
  Widget get widget {
    switch (this) {
      case TabMenu.today:
        return const TodayScreen();
      case TabMenu.game:
        return const GameScreen();
      case TabMenu.app:
        return const AppScreen();
      case TabMenu.arcade:
        return const ArcadeScreen();
      case TabMenu.search:
        return const SearchScreen();
    }
  }
}