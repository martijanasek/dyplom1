import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(0, 87, 63, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/fruit-tree.png',
            color: Color.fromRGBO(155, 227, 191, 1),
            height: 200,
            width: 200,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Color.fromRGBO(248, 247, 242, 1),
            ),
            textColor: Color.fromRGBO(248, 247, 242, 1),
            child: Text('Zaloguj'),
            onPressed: () {},
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Color.fromRGBO(248, 247, 242, 1),
            ),
            textColor: Color.fromRGBO(248, 247, 242, 1),
            child: Text('Zarejestruj'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
