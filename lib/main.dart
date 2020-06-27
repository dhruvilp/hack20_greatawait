import 'package:flutter/material.dart';
import 'package:hack20_greatawait/pages/page_not_found.dart';
import 'package:hack20_greatawait/style.dart';

import 'layouts/mobile_layout.dart';
import 'layouts/web_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Await',
      theme: kAppTheme,
      home: MyHomePage(title: 'Great Await'),
      onUnknownRoute: (RouteSettings setting) {
        var unknownRoute = setting.name;
        return MaterialPageRoute(
          builder: (context) => PageNotFound(
            title: unknownRoute,
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return (constraints.maxWidth <= 845)
            ? MobileLayout()
            : WebLayout();
      }
    );
  }
}
