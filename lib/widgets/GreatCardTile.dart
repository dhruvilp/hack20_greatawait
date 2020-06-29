import 'package:flutter/material.dart';
import 'package:hack20_greatawait/style.dart';

class GreatCardTile extends StatefulWidget {
  final String text;

  GreatCardTile({this.text});

  @override
  _GreatCardTileState createState() => _GreatCardTileState();
}

class _GreatCardTileState extends State<GreatCardTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isExpanded ? Theme.of(context).primaryColor : black,
      shape: RoundedRectangleBorder(
        side: isExpanded
            ? BorderSide.none
            : BorderSide(
                color: cyan_2,
                width: 1,
              ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        leading: Icon(
          Icons.arrow_back_ios,
          color: isExpanded ? black : white,
        ),
        title: Center(
          child: Text(
            widget.text.toUpperCase(),
            style: TextStyle(color: isExpanded ? black : white),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: isExpanded ? black : white,
        ),
        onExpansionChanged: (value) {
          print(value);
          setState(() {
            isExpanded = value;
          });
        },
        children: [
          Container(
            color: black,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: OutlineButton(
                disabledBorderColor: cyan_2,
                borderSide: BorderSide(
                  width: 2.5,
                  color: cyan_2,
                ),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(
                      10,
                      10,
                    ),
                  ),
                ),
                onPressed: null,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right,
                            size: 30,
                            color: white,
                          ),
                          Text('FORWARD CHAUN',
                              style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          widget.text,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
