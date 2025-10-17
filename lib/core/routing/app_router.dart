import 'package:flutter/material.dart';
import 'package:otex/core/routing/routes.dart';
import 'package:otex/feature/filter/presentation/page/filter_screen.dart';

import '../../feature/main_screen/presentation/page/main_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
    case Routes.mainScreen:
      return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.filterScreen:
      return MaterialPageRoute(builder: (_) => const FilterScreen());
    }
    return null;
  }
}
