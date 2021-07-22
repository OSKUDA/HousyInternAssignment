import 'package:flutter/material.dart';
import 'package:housy_intern_app/components/dashboard/profile_developer.dart';
import 'package:housy_intern_app/components/dashboard/section_task.dart';
import 'package:housy_intern_app/components/dashboard/section_active_project.dart';
import 'package:housy_intern_app/components/dashboard/search_text_field.dart';
import 'package:housy_intern_app/components/drawer/drawer_child.dart';
import 'package:housy_intern_app/utils/constants.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // isSearching is used to track whether use is in search state or not
  bool isSearching = false;
  // scrollController to programmatically scroll to desired position
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 16.0,
        child: DrawerChild(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        leading: isSearching
            ? null
            : Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 28.0,
                    color: kAppBarIconColor,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
        title: isSearching ? SearchTextField() : null,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 28.0,
              ),
              color: kAppBarIconColor,
              onPressed: () {
                setState(() {
                  isSearching = !isSearching;
                });
              },
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              ProfileDeveloper(),
              SectionTask(
                scrollCallback: () => moveScroll(),
              ),
              SectionActiveProject(),
            ],
          ),
        ),
      ),
    );
  }

  // function to animate and scroll to desired position
  void moveScroll() {
    scrollController.animateTo(
      // hardcoded the Offset
      // failed to get position of widget
      // or implement good scroll to position
      // function
      420.0,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }
}
