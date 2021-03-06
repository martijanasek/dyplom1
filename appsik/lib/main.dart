import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import './widgets/start.dart';

void main() => runApp(
      EasyLocalization(
          supportedLocales: [
            Locale('en', 'US'),
            Locale('pl', 'PL'),
          ],
          path: 'assets/translations', // <-- change patch to your
          fallbackLocale: Locale('pl', 'PL'),
          child: MyApp()),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Applergia',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appsik',
      home: Start(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 87, 63, 1),
        accentColor: Color.fromRGBO(248, 247, 242, 1),
        cardColor: Color.fromRGBO(155, 227, 191, 1),
        errorColor: Color.fromRGBO(220, 53, 69, 1),
        disabledColor: Color.fromRGBO(158, 162, 162, 1),
        backgroundColor: Color.fromRGBO(230, 213, 138, 1),
        fontFamily: 'Quicksand',
      ),
    );
  }
}
