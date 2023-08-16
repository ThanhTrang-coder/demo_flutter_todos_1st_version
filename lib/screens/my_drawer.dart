import 'package:demo_todo_flutter_bloc/blocs/bloc/tasks_bloc.dart';
import 'package:demo_todo_flutter_bloc/screens/recycle_bin.dart';
import 'package:demo_todo_flutter_bloc/screens/tasks_screen.dart';
import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              color: Colors.grey,
              child: Text(
                  'Task Drawer',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(TasksScreen.id),
                  child: const ListTile(
                    leading: Icon(Icons.folder_special),
                    title: Text('My Tasks'),
                    trailing: Text('0'),
                  ),
                );
              }
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(RecycleBin.id),
                  child: const ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Recycle Bin'),
                    trailing: Text('0'),
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
