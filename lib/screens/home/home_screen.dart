import 'package:flutter/material.dart';
import '../../components/bottom_nav_bar.dart';
import '../../components/drawer.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.nature_people, size: 24, color: Colors.white),
          Text(
            '\tRent Diary',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_active, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
