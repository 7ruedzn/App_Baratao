import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key key, this.setIcon, this.setTitle, this.setAction, this.setColor})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final IconData setIcon;
  final Widget setTitle;
  final Color setColor;
  final List<Widget> setAction;

  @override
  _CustomAppBar createState() => _CustomAppBar();
}

class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: widget.setTitle ?? Text(''), // pôr widget de logo
        backgroundColor: widget.setColor ?? Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(widget.setIcon ?? Icons.home),
        ),
        actions: widget.setAction);
  }
}
