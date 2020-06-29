import 'package:flutter/material.dart';

import '../style.dart';

class GreatOutlineButton extends StatefulWidget {
  @required
  final VoidCallback onPressed;
  final double borderWidth;
  @required
  final Widget child;
  final double borderRadius;
  final bool isSelected;

  const GreatOutlineButton({
    Key key,
    this.onPressed,
    this.borderWidth = 2.5,
    this.child,
    this.borderRadius = 10,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _GreatOutlineButtonState createState() => _GreatOutlineButtonState();
}

class _GreatOutlineButtonState extends State<GreatOutlineButton> {
  var _hoveringFAB = false;

  void _mouseEnterFAB(bool hover) {
    setState(() {
      _hoveringFAB = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnterFAB(true),
      onExit: (e) => _mouseEnterFAB(false),
      child: OutlineButton(
        onPressed: widget.onPressed,
        color: cyan_3,
        hoverColor: cyan_1,
        textColor: _hoveringFAB
            ? charcoal_dark
            : widget.isSelected ? Colors.white : cyan_2,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        borderSide: BorderSide(
          width: widget.borderWidth,
          color:
              _hoveringFAB ? cyan_1 : widget.isSelected ? Colors.white : cyan_2,
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.elliptical(
              widget.borderRadius,
              widget.borderRadius,
            ),
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
