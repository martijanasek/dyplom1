import 'package:dyplom/models/size-config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              height: SizeConfig.screenHeight,
              top: SizeConfig.paddingTop,
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: ('username').tr(),
                                suffixIcon: InkWell(
                                  child: Icon(Icons.clear),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: ('password').tr(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: ('confirm-password').tr(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).accentColor,
                    child: Text(
                      ('confirm'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  RaisedButton.icon(
                    icon: Icon(Icons.arrow_back),
                    color: Theme.of(context).disabledColor,
                    textColor: Theme.of(context).accentColor,
                    label: Text(
                      ('back'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
