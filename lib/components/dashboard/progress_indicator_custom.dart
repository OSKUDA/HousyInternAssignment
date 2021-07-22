import 'package:flutter/material.dart';
import 'package:housy_intern_app/utils/constants.dart';

class ProgressIndicatorCustom extends StatelessWidget {
  final int progress;
  ProgressIndicatorCustom({required this.progress});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 70,
            height: 70,
            child: CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.white38,
              value: progress / 100,
              strokeWidth: 6.0,
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$progress%',
                style: kProgressIndicatorValueTextStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
