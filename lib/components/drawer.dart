import 'package:flutter/material.dart';

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
          child: Text('Menu',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          decoration: BoxDecoration(color: kPrimaryColor),
        ),
        ListTile(
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Theme'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('About'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}
