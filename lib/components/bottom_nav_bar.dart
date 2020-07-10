import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';
import 'package:rentdiary/screens/home/home_screen.dart';
import 'package:rentdiary/screens/reports/reports.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding,
        ),
        height: 80,
        decoration: BoxDecoration(color: kPrimaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.dashboard, color: kBackgroundColor, size: 32),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.bubble_chart, color: kBackgroundColor, size: 32),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportsScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, color: kBackgroundColor, size: 32),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SettingsScreen(),
                //   ),
                // );
              },
            ),
          ],
        ));
  }
}
