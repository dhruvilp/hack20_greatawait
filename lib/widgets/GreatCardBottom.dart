import 'package:flutter/material.dart';
import 'package:hack20_greatawait/widgets/GreatCardTile.dart';

class GreatCardBottom extends StatefulWidget {
  @override
  _GreatCardBottomState createState() => _GreatCardBottomState();
}

class _GreatCardBottomState extends State<GreatCardBottom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Container(
            width: 300.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                GreatCardTile(text: 'on',),
                GreatCardTile(text: 'to',),
                GreatCardTile(text: 'and',),
                GreatCardTile(text: 'where',),
                GreatCardTile(text: 'with',),
                GreatCardTile(text: 'when',),
                GreatCardTile(text: 'but',),
                GreatCardTile(text: 'according',),
                GreatCardTile(text: 'whenever',),
                GreatCardTile(text: 'without',),
                GreatCardTile(text: 'from',),
                GreatCardTile(text: 'now',),
                GreatCardTile(text: 'then',),
              ],
            ),
          ),
        ),
        Container(
          width: 300.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              GreatCardTile(text: 'how',),
              GreatCardTile(text: 'i\'m',),
              GreatCardTile(text: 'why',),
              GreatCardTile(text: 'will',),
              GreatCardTile(text: 'this',),
              GreatCardTile(text: 'can',),
              GreatCardTile(text: 'is',),
              GreatCardTile(text: 'are',),
              GreatCardTile(text: 'may',),
              GreatCardTile(text: 'being',),
              GreatCardTile(text: 'many',),
              GreatCardTile(text: 'tell',),
            ],
          ),
        ),
        Container(
          width: 300.0,
          color: Colors.blue,
        ),
        Container(
          width: 300.0,
          color: Colors.green,
        ),
        Container(
          width: 300.0,
          color: Colors.yellow,
        ),
        Container(
          width: 300.0,
          color: Colors.orange,
        ),
        Container(
          width: 300.0,
          color: Colors.blueGrey,
        ),
        Container(
          width: 300.0,
          color: Colors.red,
        ),
      ],
    );
  }
}
