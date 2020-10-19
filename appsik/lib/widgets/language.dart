import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String _isLanguageChosen = 'pl';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: "pl",
            onPressed: () {
              setState(() {
                _isLanguageChosen = 'pl';
                context.locale = Locale('pl', 'PL');
              });
            },
            backgroundColor: _isLanguageChosen == 'pl'
                ? Theme.of(context).cardColor
                : Theme.of(context).primaryColor,
            child: Image.asset(
              'assets/images/poland.png',
              height: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: "en",
            onPressed: () {
              setState(() {
                _isLanguageChosen = 'en';
                context.locale = Locale('en', 'US');
              });
            },
            backgroundColor: _isLanguageChosen == 'en'
                ? Theme.of(context).cardColor
                : Theme.of(context).primaryColor,
            child: Image.asset(
              'assets/images/united-kingdom.png',
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}
