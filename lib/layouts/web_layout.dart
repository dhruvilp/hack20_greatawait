import 'package:flutter/material.dart';

import '../style.dart';

class WebLayout extends StatefulWidget {
  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Web Layout',
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
              'Great Await 2087 (Web)',
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}