import 'package:dyplom/widgets/registration.dart';
import 'package:flutter/material.dart';
import 'language.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Language(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/fruit-tree.png',
                      color: Theme.of(context).cardColor,
                      height: 200,
                      width: 200,
                    ),
                    OutlineButton(
                      borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                      ),
                      textColor: Theme.of(context).accentColor,
                      child: Text(
                        'Zaloguj',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                      ),
                      textColor: Theme.of(context).accentColor,
                      child: Text(
                        'Zarejestruj',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()),
                        );
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
