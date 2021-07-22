import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/task_card.dart';
import 'package:housy_intern_app/utils/constants.dart';

class SectionActiveProject extends StatelessWidget {
  // hardcoded the taskCardList
  final List<TaskCard> taskCardList = [
    TaskCard(
      taskTitle: 'Medical App',
      taskProgressDescription: '9 hours progress',
      progress: 25,
      taskStateColor: kToDoStateColor,
    ),
    TaskCard(
      taskTitle: 'Making History Notes',
      taskProgressDescription: '20 hours progress',
      progress: 99,
      taskStateColor: kDoneStateColor,
    ),
    TaskCard(
      taskTitle: 'Housy Intern Task',
      taskProgressDescription: '4 hours progress',
      progress: 40,
      taskStateColor: kInProgressStateColor,
    ),
    TaskCard(
      taskTitle: 'Long Task Housy Title Test',
      taskProgressDescription: '0 hours progress',
      progress: 0,
      taskStateColor: kToDoStateColor,
    ),
    TaskCard(
      taskTitle: 'Interview Study',
      taskProgressDescription: '4 hours progress',
      progress: 100,
      taskStateColor: kDoneStateColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Active Projects',
              style: kActiveProjectHeadingTextStyle,
            ),
          ),
        ),
        GridView.count(
          padding: EdgeInsets.all(5.0),
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 0.85,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: taskCardList,
        ),
      ],
    );
  }
}
