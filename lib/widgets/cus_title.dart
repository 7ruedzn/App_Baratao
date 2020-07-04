import 'package:flutter/material.dart';

class SimpleTitle extends StatefulWidget {
  SimpleTitle({
    Key key,
    @required this.titlePadding,
    this.titleText = '',
  }) : super(key: key);
  final String titleText;
  final EdgeInsetsGeometry titlePadding;

  _SimpleTitle createState() => _SimpleTitle();
}

class _SimpleTitle extends State<SimpleTitle> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      padding: widget.titlePadding ?? '',
      child: Text(
        widget.titleText ?? '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
