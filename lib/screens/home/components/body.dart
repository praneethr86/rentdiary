import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kBackgroundColor),
      child: ListView(
        padding: EdgeInsets.only(
            top: kDefaultPadding,
            bottom: kDefaultPadding,
            left: kDefaultPadding / 2),
        children: [
          PropertyListTile(
              title: 'PSR Enclave 201',
              subtitle:
                  'Current Tenant : Mrs. Srilakshmi\nLast txn date: 5-Jul-20'),
          Divider(),
          PropertyListTile(
              title: 'PSR Enclave 204',
              subtitle: 'Current Tenant : Mrs. Ramya\nLast txn date: 5-Jul-20'),
          Divider(),
          PropertyListTile(
              title: 'PSR Enclave 402',
              subtitle: 'Current Tenant : Mr. Ankit\nLast txn date: 5-Jul-20'),
          Divider(),
          PropertyListTile(
              title: 'PSR Enclave 403',
              subtitle: 'Current Tenant : Mr. Rakesh\nLast txn date: 5-Jul-20'),
          Divider(),
          PropertyListTile(
              title: 'Lalitha Jyothi 203',
              subtitle: 'Current Tenant : Mr. Ravi\nLast txn date: 25-Jun-20'),
          Divider(),
          PropertyListTile(
              title: 'Pruthvi 205',
              subtitle: 'Current Tenant : No Tenant\nLast txn date: Null'),
          Divider(),
        ],
      ),
    );
  }
}

class PropertyListTile extends StatelessWidget {
  const PropertyListTile({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            color: kTextColor, fontWeight: FontWeight.w600, fontSize: 18),
      ),
      subtitle: Text(subtitle,
          style: TextStyle(
              color: kTextColor, fontWeight: FontWeight.w300, fontSize: 14)),
      leading: Icon(Icons.home, color: kPrimaryColor, size: 32),
      onTap: () {},
    );
  }
}
