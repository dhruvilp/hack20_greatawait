import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:hack20_greatawait/style.dart';

import '../../defaults.dart';
import '../great_card.dart';

class ConfigCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GreatCard(
      backgroundColor: transparent,
      borderRadius: 25.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: knowledgeBase(context),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Flexible(
                  child: inferenceEngine(context, true),
                ),
                SizedBox(height: 15.0),
                Flexible(
                  child: inferenceEngine(context, false),
                ),
              ],
            ),
          ),
          Flexible(
            child: Align(
              alignment: Alignment.centerRight,
              child: Processes(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget knowledgeBase(BuildContext context) {
  return GreatCard(
    borderRadius: 20.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: cyan_2, width: 1.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: cyan_4,
              ),
              child: Text(
                'KNOWLEDGE BASE',
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            scrollDirection: Axis.vertical,
            itemCount: kKnowledgeBaseItems.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Row(
                  children: [
                    Icon(
                      Icons.arrow_right,
                      color: white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Online Functions',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                );
              }
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      color: cyan_2,
                      child: Icon(
                        Icons.compare_arrows,
                        color: charcoal_dark,
                        size: 14.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      kKnowledgeBaseItems[index - 1],
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget inferenceEngine(BuildContext context, bool isForwardChaining) {
  return GreatCard(
    borderRadius: 10.0,
    child: Column(
      children: [
        Row(
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: cyan_2, width: 1.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: cyan_4,
              ),
              child: Text(
                'INFERENCE ENGINE',
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            isForwardChaining ? 'FORWARD CHAINING' : 'BACKWARD CHAINING',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: InkWell(
            onTap: () {},
            child: isForwardChaining
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '● - ',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      Icon(Icons.arrow_forward_ios, color: cyan_1),
                      Icon(Icons.arrow_forward_ios, color: cyan_1),
                      Icon(Icons.arrow_forward_ios, color: cyan_1),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.arrow_back_ios, color: cyan_1),
                      Icon(Icons.arrow_back_ios, color: cyan_1),
                      Icon(Icons.arrow_back_ios, color: cyan_1),
                      Text(
                        ' - ●',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                    ],
                  ),
          ),
        ),
      ],
    ),
  );
}

class Processes extends StatefulWidget {
  @override
  _ProcessesState createState() => _ProcessesState();
}

class _ProcessesState extends State<Processes> {
  var selectedProcess = 1;

  @override
  Widget build(BuildContext context) {
    return GreatCard(
      borderRadius: 20.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: cyan_2, width: 1.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  color: cyan_4,
                ),
                child: Text(
                  'PROCESSES',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Expanded(
            flex: 5,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: kProcesses.length,
              padding: EdgeInsets.only(left: 8.0),
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: ChoiceChip(
                    backgroundColor: cyan_3,
                    selectedColor: cyan_1,
                    selected: selectedProcess == index,
                    labelStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: charcoal_dark,
                          fontWeight: FontWeight.w400,
                        ),
                    onSelected: (process) {
                      setState(() {
                        selectedProcess = process ? index : 1;
                      });
                    },
                    label: Text(
                      kProcesses[index],
                    ),
                    shape: BeveledRectangleBorder(
                      side: BorderSide(color: cyan_1, width: 0.3),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.elliptical(20.0, 20.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
