import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/circular_avatar.dart';
import 'package:housy_intern_app/utils/constants.dart';

class DrawerChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 25),
                CircularAvatar(),
                SizedBox(width: 8.0),
                Text(
                  'Oskar',
                  style: kUserNameTextStyle,
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 5,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: false,
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('Payments'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Discounts'),
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notification'),
                ),
                ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Orders'),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.headphones),
                  title: Text('Support'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
