import 'package:dyplom/models/size-config.dart';
import 'package:dyplom/widgets/registration.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'language.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Positioned(
              height: SizeConfig.screenHeight,
              top: SizeConfig.paddingTop,
              width: SizeConfig.screenWidth,
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
                              ('login'),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ).tr(),
                            onPressed: () {},
                          ),
                          OutlineButton(
                            borderSide: BorderSide(
                              color: Theme.of(context).accentColor,
                            ),
                            textColor: Theme.of(context).accentColor,
                            child: Text(
                              ('sign-up'),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ).tr(),
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
          ],
        ),
      ),
    );
  }
}
