import 'package:flutter/material.dart';

PreferredSizeWidget appBar(
    {double? toolBarHeight,
    double? elevation,
    Widget? leading,
    double? leadingWidth,
    String? title,
    Widget? titleWidget,
    Color? backgroundColor}) {
  return AppBar(
    elevation: elevation ?? 0,
    title: titleWidget ?? Text(title ?? ''),
    centerTitle: false,
    leading: leading,
    leadingWidth: leadingWidth,
    backgroundColor: backgroundColor ?? Colors.white,
  );
}

PreferredSizeWidget mainAppBar(BuildContext context) {
  return appBar(
    leading: Container(),
    leadingWidth: 0,
  );
}

PreferredSizeWidget plainAppBar() {
  return appBar(
    toolBarHeight: 0,
    elevation: 0,
  );
}
