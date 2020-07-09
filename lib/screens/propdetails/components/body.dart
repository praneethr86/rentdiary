import 'package:flutter/material.dart';
import 'package:rentdiary/constants.dart';
import 'package:rentdiary/screens/tenantdetails/tenant_details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Column(
        children: [
          TenantCard(),
          TenantButtonRow(),
          Divider(),
          TransactionTable(),
          // Container(), // Button
        ],
      ),
    );
  }
}

class TransactionTable extends StatelessWidget {
  const TransactionTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 8),
      child: SingleChildScrollView(
        child: DataTable(
          // sortColumnIndex: 0,
          //sortAscending: true,
          columnSpacing: 10,
          columns: [
            DataColumn(
                label: Text('Date',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            DataColumn(
              label: Text('Type',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ), //Rent, Expense
            DataColumn(
                label: Text('Amount',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Comments',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('5-Jul-2020',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('Rent',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('18000',
                  style: TextStyle(fontSize: 14, color: Colors.green))),
              DataCell(Text('Paid Rent',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)))
            ]),
            DataRow(cells: [
              DataCell(Text('4-Jul-2020',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('Expense',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('9000',
                  style: TextStyle(fontSize: 14, color: Colors.red))),
              DataCell(Text('Mosquito Nets',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)))
            ]),
            DataRow(cells: [
              DataCell(Text('3-Jul-2020',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('Expense',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('3000',
                  style: TextStyle(fontSize: 14, color: Colors.red))),
              DataCell(Text('Cleaning',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)))
            ]),
            DataRow(cells: [
              DataCell(Text('1-Jul-2020',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('Rent',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
              DataCell(Text('36000',
                  style: TextStyle(fontSize: 14, color: Colors.green))),
              DataCell(Text('Advance Paid',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)))
            ]),
          ],
        ),
      ),
    );
  }
}

class TenantCard extends StatelessWidget {
  const TenantCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text('Tenant Name: Mr. Rakesh Sherla',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('Date of Occupancy: 1-Jul-2020'),
            ],
          ),
        ],
      ),
    );
  }
}

class TenantButtonRow extends StatelessWidget {
  const TenantButtonRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.call, color: kPrimaryColor, size: 28),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.message, color: kPrimaryColor, size: 28),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.info, color: kPrimaryColor, size: 28),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TenantDetails(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
