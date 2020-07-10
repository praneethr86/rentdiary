import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

// property name, paid by tenant (prefilled),
// Amount, Date, comments
class Body extends StatelessWidget {
  const Body({Key key, this.propName, this.tenantName}) : super(key: key);

  final String propName, tenantName;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding / 2, right: kDefaultPadding / 2),
      child: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  propName,
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                leading: Icon(Icons.home),
              ),
              Divider(),
              ListTile(
                title: Text(
                  tenantName,
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                leading: Icon(Icons.people),
              ),
              PaymentForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  final _formKey = GlobalKey<FormState>();
  String _selectedDate = 'Tap to select date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime d = await showDatePicker(
      //we wait for the dialog to return
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
    );
    if (d != null) //if the user has selected a date
      setState(() {
        // we format the selected date and assign it to the state variable
        _selectedDate = new DateFormat.yMMMMd("en_US").format(d);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding * 2,
                  left: kDefaultPadding * 4,
                  right: kDefaultPadding * 2),
              child: Row(
                children: [
                  Text('Select: '),
                  Radio(
                    value: 0,
                    groupValue: null,
                    onChanged: null,
                  ),
                  Text('Rent'),
                  Radio(
                    value: 0,
                    groupValue: null,
                    onChanged: null,
                  ),
                  Text('Expense')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding * 4,
                  right: kDefaultPadding * 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.payment, color: kPrimaryColor, size: 24),
                  hintText: '0.00',
                  labelText: 'Enter Amount (INR)',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter amount';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding * 4,
                  right: kDefaultPadding * 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.insert_comment,
                      color: kPrimaryColor, size: 24),
                  hintText: 'Enter comments',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding * 2,
                  left: kDefaultPadding * 3.5,
                  right: kDefaultPadding * 5,
                  bottom: kDefaultPadding * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: kPrimaryColor,
                    size: 24,
                  ),
                  InkWell(
                    child: Text(
                        (_selectedDate == null)
                            ? 'Tap to select Date'
                            : _selectedDate,
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Color(0xFF000000), fontSize: 16)),
                    onTap: () {
                      _selectDate(context);
                    },
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: kPrimaryColor,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Sending Payment data'),
                    ),
                  );
                }
              },
              child: Text('Submit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }
}

//TODO: image_picker
