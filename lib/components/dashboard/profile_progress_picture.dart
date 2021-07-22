import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/circular_avatar.dart';
import 'package:housy_intern_app/utils/constants.dart';

class ProfileProgressPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 90,
            height: 90,
            child: CircularProgressIndicator(
              strokeWidth: 3.0,
              color: kProfileAvatarCircularProgressColor,
            ),
          ),
        ),
        Center(
          child: CircularAvatar(),
        ),
      ],
    );
  }
}
