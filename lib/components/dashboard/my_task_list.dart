import 'package:flutter/material.dart';
import 'package:housy_intern_app/utils/constants.dart';

class MyTaskList extends StatelessWidget {
  final String taskListHeading;
  final String taskListDescription;
  final IconData taskListIcon;
  final Color taskIconColor;
  final Function() callback;
  MyTaskList({
    required this.taskListIcon,
    required this.taskListHeading,
    required this.taskListDescription,
    required this.taskIconColor,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 5.0,
      ),
      child: GestureDetector(
        onTap: callback,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: callback,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15.0),
                primary: taskIconColor,
              ),
              child: Icon(taskListIcon),
            ),
            SizedBox(width: 5.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskListHeading,
                  style: kMyTaskListHeadingTextStyle,
                ),
                Text(
                  taskListDescription,
                  style: kMyTaskListDescriptionTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
