import 'package:flutter/material.dart';

import '../style.dart';

class MobileLayout extends StatefulWidget {
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Mobile Layout',
          style: Theme.of(context).textTheme.headline6.copyWith(
            color: charcoal_dark,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Great Await 2087 (Mobile)',
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}