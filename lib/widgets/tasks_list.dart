import 'package:demo_todo_flutter_bloc/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import '../database/RealmDatabase.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {
  RealmResults<Task> tasksList;

  TasksList({
    super.key, required this.tasksList
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (context, index) {
            var task = tasksList[index];
            return TaskTile(task: task);
          }
      ),
    );
  }
}