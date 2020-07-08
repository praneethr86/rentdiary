import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';
import 'package:rentdiary/screens/payment/payment_form.dart';
import 'package:rentdiary/screens/propdetails/property_details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
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
                PropertyListTile(
                    title: 'PSR Enclave 204',
                    subtitle:
                        'Current Tenant : Mrs. Ramya\nLast txn date: 5-Jul-20'),
                PropertyListTile(
                    title: 'PSR Enclave 402',
                    subtitle:
                        'Current Tenant : Mr. Ankit\nLast txn date: 5-Jul-20'),
                PropertyListTile(
                    title: 'PSR Enclave 403',
                    subtitle:
                        'Current Tenant : Mr. Rakesh\nLast txn date: 5-Jul-20'),
                PropertyListTile(
                    title: 'Lalitha Jyothi 203',
                    subtitle:
                        'Current Tenant : Mr. Ravi\nLast txn date: 25-Jun-20'),
                PropertyListTile(
                    title: 'Pruthvi 205',
                    subtitle:
                        'Current Tenant : No Tenant\nLast txn date: Null'),
              ],
            ),
          ),
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
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              subtitle: Text(subtitle,
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 14)),
              leading: Icon(Icons.home, color: kPrimaryColor, size: 32),
            ),
            ButtonBar(
              children: [
                FlatButton(
                  child: Text('Add Payment'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentForm()),
                    );
                  },
                ),
                FlatButton(
                  child: Text('View Details'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyDetails()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
