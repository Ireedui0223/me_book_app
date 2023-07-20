import 'package:flutter/material.dart';

Widget btnAction(
    {required IconData icon,
    required GestureTapCallback onPressed,
    Color? color,
    double? size}) {
  return clickItem(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        width: 40,
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: size,
          ),
        ),
      ));
}

Widget clickItem(
    {required GestureTapCallback onTap,
    required Widget child,
    bool isEffect = false}) {
  return InkWell(
    highlightColor: isEffect ? null : Colors.transparent,
    splashColor: isEffect ? null : Colors.transparent,
    onTap: onTap,
    child: child,
  );
}
