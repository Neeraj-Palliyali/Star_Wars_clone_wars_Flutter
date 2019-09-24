import 'package:flutter/material.dart';
class StarShipCard extends StatefulWidget {
  final Widget starShipCard;
  StarShipCard({Key key,@required this.starShipCard}):super();
  @override
  _StarShipCardState createState() => _StarShipCardState();
}

class _StarShipCardState extends State<StarShipCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.purple,offset: Offset(10.0,10.0))
            ]),
            child: widget.starShipCard,
          ),
        )
      ],
    );
  }
}
