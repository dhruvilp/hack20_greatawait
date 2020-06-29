import 'package:flutter/material.dart';
import 'package:hack20_greatawait/widgets/great_card.dart';
import 'package:hack20_greatawait/widgets/great_outline_button.dart';

Widget kAppBar(BuildContext context) {
  return AppBar(
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
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            GreatOutlineButton(
              onPressed: () {},
              child: Text('CODE'),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('HOSTS'),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('SOFTWARE'),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('MODS'),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('INFO'),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('DATA'),
            ),
          ],
        ),
      ],
    ),
  );
}
