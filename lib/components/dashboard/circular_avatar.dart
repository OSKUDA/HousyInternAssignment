import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: Image.asset(
          'assets/user/avatar.png',
          width: 80.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
