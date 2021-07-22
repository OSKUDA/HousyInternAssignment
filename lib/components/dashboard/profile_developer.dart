import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/profile_progress_picture.dart';
import 'package:housy_intern_app/utils/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ProfileDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45.0),
          bottomRight: Radius.circular(45.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileProgressPicture(),
          SizedBox(width: 15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 190.0,
                child: DefaultTextStyle(
                  style: kUserNameTextStyle,
                  child: AnimatedTextKit(
                    pause: Duration(seconds: 2),
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Oskar K. Shrestha',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 250),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                'Flutter Developer',
                style: kUserPositionTextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
