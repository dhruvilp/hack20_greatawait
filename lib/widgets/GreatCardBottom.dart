import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:hack20_greatawait/widgets/GreatCardTile.dart';

import '../style.dart';

class GreatCardBottom extends StatefulWidget {
  @override
  _GreatCardBottomState createState() => _GreatCardBottomState();
}

class _GreatCardBottomState extends State<GreatCardBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    color: cyan_2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Icon(
                        GroovinMaterialIcons.square,
                        color: charcoal,
                        size: 15.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'DIALOGUE GENERATOR',
                    style:
                        Theme.of(context).primaryTextTheme.headline6.copyWith(
                              color: cyan_2,
                            ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Container(
                  width: 300.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      GreatCardTile(
                        text: 'on',
                      ),
                      GreatCardTile(
                        text: 'to',
                      ),
                      GreatCardTile(
                        text: 'and',
                      ),
                      GreatCardTile(
                        text: 'where',
                      ),
                      GreatCardTile(
                        text: 'with',
                      ),
                      GreatCardTile(
                        text: 'when',
                      ),
                      GreatCardTile(
                        text: 'but',
                      ),
                      GreatCardTile(
                        text: 'according',
                      ),
                      GreatCardTile(
                        text: 'whenever',
                      ),
                      GreatCardTile(
                        text: 'without',
                      ),
                      GreatCardTile(
                        text: 'from',
                      ),
                      GreatCardTile(
                        text: 'now',
                      ),
                      GreatCardTile(
                        text: 'then',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 300.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GreatCardTile(
                      text: 'how',
                    ),
                    GreatCardTile(
                      text: 'i\'m',
                    ),
                    GreatCardTile(
                      text: 'why',
                    ),
                    GreatCardTile(
                      text: 'will',
                    ),
                    GreatCardTile(
                      text: 'this',
                    ),
                    GreatCardTile(
                      text: 'can',
                    ),
                    GreatCardTile(
                      text: 'is',
                    ),
                    GreatCardTile(
                      text: 'are',
                    ),
                    GreatCardTile(
                      text: 'may',
                    ),
                    GreatCardTile(
                      text: 'being',
                    ),
                    GreatCardTile(
                      text: 'many',
                    ),
                    GreatCardTile(
                      text: 'tell',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 300.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      GreatCardTile(text: 'when'),
                      GreatCardTile(text: 'but'),
                      GreatCardTile(text: 'according'),
                      GreatCardTile(text: 'whenever'),
                      GreatCardTile(text: 'without'),
                      GreatCardTile(text: 'from'),
                      GreatCardTile(text: 'now'),
                      GreatCardTile(text: 'then'),
                      GreatCardTile(text: 'on'),
                      GreatCardTile(text: 'to'),
                      GreatCardTile(text: 'and'),
                      GreatCardTile(text: 'where'),
                      GreatCardTile(text: 'with'),
                    ],
                  ),
                ),
              ),
              Container(
                width: 300.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GreatCardTile(
                      text: 'can',
                    ),
                    GreatCardTile(
                      text: 'is',
                    ),
                    GreatCardTile(
                      text: 'are',
                    ),
                    GreatCardTile(
                      text: 'may',
                    ),
                    GreatCardTile(
                      text: 'being',
                    ),
                    GreatCardTile(
                      text: 'how',
                    ),
                    GreatCardTile(
                      text: 'i\'m',
                    ),
                    GreatCardTile(
                      text: 'why',
                    ),
                    GreatCardTile(
                      text: 'will',
                    ),
                    GreatCardTile(
                      text: 'this',
                    ),
                    GreatCardTile(
                      text: 'many',
                    ),
                    GreatCardTile(
                      text: 'tell',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
