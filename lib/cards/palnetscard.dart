import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlanetsCard extends StatefulWidget {
  final Widget planetsCard;
  PlanetsCard({Key key,@required this.planetsCard}):super();
  @override
  _PlanetsCardState createState() => _PlanetsCardState();
}

class _PlanetsCardState extends State<PlanetsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.deepPurple,
                  offset: Offset(10.0,10.0))
              ],
            ),
            child: widget.planetsCard,
          ),
        )
      ],
    );
  }
}
