import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/my_task_list.dart';
import 'package:housy_intern_app/utils/constants.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SectionTask extends StatelessWidget {
  // scrollCallback for calling moveScroll function on dashboardScreen
  final Function? scrollCallback;
  SectionTask({this.scrollCallback});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Tasks',
                style: kMyTaskHeadingTextStyle,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog<void>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.green,
                          title: Text('Today\'s Date'),
                          content: Container(
                            width: 300.0,
                            height: 300.0,
                            child: SfCalendar(
                              view: CalendarView.month,
                            ),
                          ),
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15.0),
                  primary: kCalendarIconColor,
                ),
                child: Icon(
                  Icons.calendar_today_outlined,
                ),
              ),
            ],
          ),
          MyTaskList(
            taskListIcon: Icons.alarm,
            taskListHeading: 'To Do',
            taskListDescription: '5 tasks now. 1 started',
            taskIconColor: kToDoStateColor,
            callback: () {},
          ),
          MyTaskList(
            taskListIcon: Icons.blur_circular_outlined,
            taskListHeading: 'In Progress',
            taskListDescription: '1 tasks now. 1 started',
            taskIconColor: kInProgressStateColor,
            callback: () {
              scrollCallback!();
            },
          ),
          MyTaskList(
            taskListIcon: Icons.check_circle_outline,
            taskListHeading: 'Done',
            taskListDescription: '18 tasks now. 13 started',
            taskIconColor: kDoneStateColor,
            callback: () {},
          ),
        ],
      ),
    );
  }
}
