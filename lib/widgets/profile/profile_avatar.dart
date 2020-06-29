import 'package:flutter/material.dart';
import 'package:hack20_greatawait/clippers/triangle_clipper.dart';
import 'package:hack20_greatawait/defaults.dart';
import 'package:hack20_greatawait/style.dart';
import 'package:hack20_greatawait/widgets/curved_text.dart';

class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CurvedText(
            text: kHostId,
            radius: 90.0,
            textStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                  letterSpacing: 1.0,
                ),
          ),
        ),
        Center(
          child: Container(
            width: 220.0,
            height: 220.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(120.0),
              border: Border.all(color: Colors.white70, width: 1.5),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 170.0,
            height: 170.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(120.0),
              border: Border.all(color: Colors.white70, width: 1.5),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 195.0,
            ),
            child: ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                color: white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 195.0,
            ),
            child: ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                color: cyan_1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage(kHost1),
          ),
        ),
      ],
    );
  }
}
