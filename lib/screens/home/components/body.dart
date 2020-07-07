import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kBackgroundColor),
      child: ListView(
        children: [
          ListTile(
            title: Text('PSR Enclave 201'),
            subtitle: Text('Current Tenant : Mrs. Srilakshmi'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('PSR Enclave 204'),
            subtitle: Text('Current Tenant : Mrs. Ramya'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('PSR Enclave 402'),
            subtitle: Text('Current Tenant : Mr. Ankit'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('PSR Enclave 403'),
            subtitle: Text('Current Tenant : Mr. Rakesh'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('Lalitha Jyothi 203'),
            subtitle: Text('Current Tenant : Mr. Ravi'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Pruthvi 205'),
            subtitle: Text('Current Tenant : No Tenant'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
