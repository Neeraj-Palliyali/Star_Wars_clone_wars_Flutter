import 'package:flutter/material.dart';
class PeopleCard extends StatefulWidget {
  final PeopleCard people;
  PeopleCard({@required this.people}):super();
  @override
  _PeopleCardState createState() => _PeopleCardState();
}

class _PeopleCardState extends State<PeopleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(boxShadow:
            [ BoxShadow(color:Colors.red)]
            ),
            child: widget.people,
          ),
        )
      ],
    );
  }
}

