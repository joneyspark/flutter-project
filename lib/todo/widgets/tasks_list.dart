import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    this.checkBoxCallback,
    this.deleteItemCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function? checkBoxCallback;
  final Function? deleteItemCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: () => deleteItemCallback!(taskTitle),
        child: Text(
          taskTitle,
          style: TextStyle(
            color: Colors.black,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (isChecked) => checkBoxCallback!(isChecked),
        activeColor: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            width: 2.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
