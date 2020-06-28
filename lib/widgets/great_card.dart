import 'package:flutter/material.dart';
import 'package:hack20_greatawait/style.dart';

class GreatCard extends StatefulWidget {
  final double borderRadius;
  final Widget child;
  final Color backgroundColor;
  final bool isBottomLeftCut;
  final bool isTopLeftCut;
  final bool isTopRightCut;

  const GreatCard({
    Key key,
    this.borderRadius = 10,
    this.child,
    this.backgroundColor = cyan_4,
    this.isBottomLeftCut = false,
    this.isTopLeftCut = false,
    this.isTopRightCut = false,
  }) : super(key: key);

  @override
  _GreatCardState createState() => _GreatCardState();
}

class _GreatCardState extends State<GreatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: widget.backgroundColor,
      child: widget.child,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.elliptical(
            widget.borderRadius,
            widget.borderRadius,
          ),
          bottomLeft: widget.isBottomLeftCut
              ? Radius.elliptical(
                  widget.borderRadius,
                  widget.borderRadius,
                )
              : Radius.zero,
          topLeft: widget.isTopLeftCut
              ? Radius.elliptical(
                  widget.borderRadius,
                  widget.borderRadius,
                )
              : Radius.zero,
          topRight: widget.isTopRightCut
              ? Radius.elliptical(
                  widget.borderRadius,
                  widget.borderRadius,
                )
              : Radius.zero,
        ),
      ),
    );
  }
}
