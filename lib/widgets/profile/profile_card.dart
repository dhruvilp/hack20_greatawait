import 'package:flutter/material.dart';
import 'package:hack20_greatawait/defaults.dart';
import 'package:hack20_greatawait/widgets/great_card.dart';
import 'package:hack20_greatawait/widgets/profile/profile_avatar.dart';

import '../../style.dart';
import '../great_outline_button.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GreatCard(
      borderRadius: 25.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerLeft,
              child: ProfileAvatar(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: _firstBox(context),
                ),
                Divider(color: cyan_4, height: 12.0, thickness: 2.0),
                Expanded(
                  flex: 1,
                  child: _secondBox(context),
                ),
                Divider(color: cyan_4, height: 12.0, thickness: 2.0),
                Expanded(
                  flex: 1,
                  child: _thirdBox(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _firstBox(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(kProfileView),
        ),
      ],
    );
  }

  Widget _secondBox(BuildContext context) {
    var _buttonTextStyle = TextStyle(fontSize: 10.0);
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ButtonBar(
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            GreatOutlineButton(
              onPressed: () {},
              child: Text('SETTINGS', style: _buttonTextStyle),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('OPERATIONS', style: _buttonTextStyle),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('DIAGNOSTICS', style: _buttonTextStyle),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('COMMANDS', style: _buttonTextStyle),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('MAIN', style: _buttonTextStyle),
            ),
            GreatOutlineButton(
              onPressed: () {},
              child: Text('CHECK', style: _buttonTextStyle),
            ),
          ],
        ),
      ],
    );
  }

  Widget _thirdBox(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'HR:',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    '180-75',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, left: 8.0),
                child: Text(
                  '110',
                  style: Theme.of(context).accentTextTheme.headline5,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'SpO2:',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    '100-90',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, left: 8.0),
                child: Text(
                  '92',
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'RR:',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    '45-10',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, left: 8.0),
                child: Text(
                  '040',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CC: O',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                  Text(
                    'PL:  O',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                ],
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AD: O O',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 10.0,
                        ),
                  ),
                  Text(
                    'SC: ●',
                    style:
                        Theme.of(context).primaryTextTheme.bodyText2.copyWith(
                              fontSize: 10.0,
                            ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
