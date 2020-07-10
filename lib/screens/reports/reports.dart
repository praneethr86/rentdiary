import 'package:flutter/material.dart';
import 'package:rentdiary/components/bottom_nav_bar.dart';

import 'components/body.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Reports',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
    );
  }
}
