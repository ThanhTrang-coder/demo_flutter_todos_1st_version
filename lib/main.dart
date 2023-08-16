import 'package:demo_todo_flutter_bloc/database/RealmDatabase.dart';
import 'package:demo_todo_flutter_bloc/screens/tasks_screen.dart';
import 'package:flutter/material.dart';

import 'blocs/bloc_exports.dart';
import 'services/app_router.dart';

void main() {
  BlocOverrides.runZoned(
      () => runApp(MyApp(
        appRouter: AppRouter(),
      ))
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => TasksBloc(RealmDatabase()),
      child: MaterialApp(
        title: 'Flutter Tasks App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TasksScreen(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}

