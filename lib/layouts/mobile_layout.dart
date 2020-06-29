import 'package:flutter/material.dart';
import 'package:hack20_greatawait/widgets/app_bar.dart';
import 'package:hack20_greatawait/widgets/great_card.dart';

class MobileLayout extends StatefulWidget {
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GreatCard(
                isTopLeftCut: true,
                backgroundColor: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.3,
                  ),
                  child: Text(
                    'GREAT AWAIT',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Text(
            'Please use screen size wider than 845 (width) for better results.\n(Note: Full screens are recommended)',
          ),
        ),
      ),
    );
  }
}
