import 'package:flutter/material.dart';
import 'package:rentdiary/components/bottom_nav_bar.dart';

import 'components/body.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({Key key, this.propName, this.tenantName})
      : super(key: key);
  final String propName, tenantName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: DrawerWidget(),
      appBar: buildAppBar(),
      body: Body(
        propName: propName,
        tenantName: tenantName,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Add Expense',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
    );
  }
}
