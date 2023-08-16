import 'package:demo_todo_flutter_bloc/screens/tasks_screen.dart';
import 'package:flutter/material.dart';

import '../screens/recycle_bin.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(
            builder: (_) => const RecycleBin()
        );
      case TasksScreen.id:
        return MaterialPageRoute(
            builder: (_) => const TasksScreen()
        );
      default:
        return null;
    }
  }
}