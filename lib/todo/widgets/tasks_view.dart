import 'package:flutter/material.dart';
import 'package:helloworld/todo/models/Task.dart';
import 'package:helloworld/todo/models/task_data.dart';
import 'package:helloworld/todo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasks!.length,
        itemBuilder: ((context, index) {
          final task = taskData.tasks![index];
          return TasksList(
            isChecked: task.isDone,
            taskTitle: task.name,
            checkBoxCallback: (bool checkedBoxState) {
              taskData.updateTask(task);

              // WidgetsBinding.instance.addPostFrameCallback((_) {
              // setState(
              //   () {
              //     Provider.of<TaskData>(context).tasks[index].toggleDone();
              //   },
              // );
              // });
            },
            deleteItemCallback: (String taskTitle) {
              taskData.deleteTask(taskTitle);
            },
          );
        }),
      );
    });
  }
}
