import 'package:flutter/material.dart';
import 'package:rentdiary/screens/settings/settings.dart';

import '../constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.nature_people, size: 48, color: Colors.white),
              Text('Rent Diary',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: kPrimaryColor),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
          },
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          trailing: Switch(
            value: true,
            onChanged: null,
            activeColor: Colors.green,
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ),
            );
          },
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}
