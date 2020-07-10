import 'package:flutter/material.dart';
import 'package:rentdiary/components/bottom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Version: 1.0.0'),
                subtitle: Text('App is under construction...'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Built with care by '),
                subtitle: Text('codePrady'),
              ),
              ListTile(
                leading: Icon(Icons.bug_report),
                title: Text('Report Bugs'),
                subtitle: Text('Click Here'),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Feedback'),
                subtitle: Text('Write us at abc@gmail.com'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Settings',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
    );
  }
}
