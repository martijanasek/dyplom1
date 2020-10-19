import 'package:flutter/material.dart';

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
        Container(
          decoration: BoxDecoration(
            border: _isLanguageChosen == 'pl'
                ? Border.all(
                    color: Theme.of(context).backgroundColor,
                    width: 5,
                  )
                : null,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Image.asset(
              'assets/images/poland.png',
            ),
            iconSize: 25,
            onPressed: () {
              setState(() {
                _isLanguageChosen = 'pl';
              });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: _isLanguageChosen == 'en'
                ? Border.all(
                    color: Theme.of(context).backgroundColor,
                    width: 5,
                  )
                : null,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Image.asset(
              'assets/images/united-kingdom.png',
            ),
            iconSize: 25,
            onPressed: () {
              setState(() {
                _isLanguageChosen = 'en';
              });
            },
          ),
        ),
      ],
    );
  }
}
