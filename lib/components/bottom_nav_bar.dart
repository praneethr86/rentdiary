import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';

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
            Icon(Icons.account_balance, color: kBackgroundColor, size: 32),
            Icon(Icons.pie_chart, color: kBackgroundColor, size: 32),
            Icon(Icons.people, color: kBackgroundColor, size: 32),
            Icon(Icons.settings, color: kBackgroundColor, size: 32),
          ],
        ));
  }
}
