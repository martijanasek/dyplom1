import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).accentColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                FormBuilder(
                  key: _fbKey,
                  initialValue: {
                    'date': DateTime.now(),
                  },
                  autovalidate: true,
                  child: Column(
                    children: <Widget>[
                      FormBuilderTextField(
                        attribute: 'text',
                        validators: [FormBuilderValidators.required()],
                        decoration: InputDecoration(labelText: 'Who are you?'),
                      ),
                      FormBuilderDateTimePicker(
                        attribute: "date",
                        inputType: InputType.date,
                        validators: [FormBuilderValidators.required()],
                        format: DateFormat("dd-MM-yyyy"),
                        decoration: InputDecoration(labelText: "Date of Birth"),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).accentColor,
                  child: Text(
                    'Potwierdź',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 5,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  color: Theme.of(context).disabledColor,
                  textColor: Theme.of(context).accentColor,
                  child: Text(
                    'Powrót',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 5,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
