import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: kDefaultPadding * 2, left: kDefaultPadding * 1.5),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Address'),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact No'),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Occupation'),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Occupied Date'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Vacated Date'),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Advance Paid'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Family Members'),
            ),
          ],
        ),
      ),
    );
  }
}
