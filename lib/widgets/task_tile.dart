import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({
    super.key,
    required this.task
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, index) {
          return Checkbox(
            onChanged: (value) {
              context.read<TasksBloc>().add(UpdateTask(task: task));
            },
            value: task.isDone,
            tristate: true,
          );
        },
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          context.read<TasksBloc>().add(DeleteTask(task: task));
        },
      ),
    );
  }
}