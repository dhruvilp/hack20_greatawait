import 'package:flutter/material.dart';
import 'package:hack20_greatawait/widgets/GreatCardBottom.dart';
import 'package:hack20_greatawait/widgets/app_bar.dart';
import 'package:hack20_greatawait/widgets/great_card.dart';
import 'package:hack20_greatawait/widgets/profile/profile_card.dart';

class WebLayout extends StatefulWidget {
  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar(context),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 2.8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ProfileCard(),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 2.8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GreatCard(
                      borderRadius: 25.0,
                      child: Center(
                        child: Text('Top-Right Box'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: GreatCard(
                borderRadius: 25.0,
                child: Center(
                  child: GreatCardBottom(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
