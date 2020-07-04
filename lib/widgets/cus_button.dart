import 'package:app_o_baratao/layout/layout_color.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatefulWidget {
  final Widget child;
  final Color iconColor;
  final IconData iconToSet;
  final String buttonText;
  final Widget nextPage;

  NormalButton({
    Key key,
    this.child,
    this.iconColor,
    this.iconToSet,
    this.nextPage,
    this.buttonText = '',
  }) : super(key: key);

  _NormalButtonState createState() => _NormalButtonState();
}

class _NormalButtonState extends State<NormalButton> {
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade900),
        ),
      ), // don't change
      padding: EdgeInsets.all(8.0),
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Icon(
              widget.iconToSet ?? '',
              color: widget.iconColor ?? Colors.redAccent,
            ),
            Text(
              widget.buttonText ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
            new Icon(
              Icons.arrow_forward_ios,
              color: LayoutColor.primaryColor,
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.nextPage ?? ''),
          );
        },
      ),
    );
  }
}
