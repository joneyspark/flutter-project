import 'package:flutter/material.dart';
import 'package:helloworld/todo/models/Task.dart';
import 'package:helloworld/todo/widgets/tasks_list.dart';

class TasksView extends StatefulWidget {
  const TasksView({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: ((context, index) {
        return TasksList(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxCallback: (bool checkedBoxState) {
            // WidgetsBinding.instance.addPostFrameCallback((_) {
            setState(
              () {
                widget.tasks[index].toggleDone();
              },
            );
            // });
          },
        );
      }),
    );
  }
}
