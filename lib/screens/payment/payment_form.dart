import 'package:flutter/material.dart';
import 'package:rentdiary/components/bottom_nav_bar.dart';
import 'package:rentdiary/components/drawer.dart';

import 'components/body.dart';

class PaymentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Add Rent Payment',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
    );
  }
}
