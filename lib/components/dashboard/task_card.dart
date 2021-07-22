import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/progress_indicator_custom.dart';
import 'package:housy_intern_app/utils/constants.dart';

class TaskCard extends StatelessWidget {
  final Color taskStateColor;
  final String taskTitle;
  final String taskProgressDescription;
  final int progress;
  TaskCard({
    required this.taskTitle,
    required this.taskProgressDescription,
    required this.progress,
    required this.taskStateColor,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: taskStateColor,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Column(
        children: [
          Flexible(
            flex: 6,
            child: ProgressIndicatorCustom(
              progress: progress,
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                right: 20.0,
                bottom: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    taskTitle,
                    style: kTaskCardTitleTextStyle,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    taskProgressDescription,
                    style: kTaskCardProgressDescriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
