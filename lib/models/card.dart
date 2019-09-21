import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;

  AppCard({Key key, @required this.child}) : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.blue, offset: Offset(10, 10))
            ]),
            child: widget.child,
          ),
        )
      ],
    );
  }
}
