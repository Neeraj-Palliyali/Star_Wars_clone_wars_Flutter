import 'package:flutter/material.dart';
class FilmsCard extends StatefulWidget {
  final FilmsCard filmsCard;
  FilmsCard({Key key,@required this.filmsCard}):super();
  @override

  _FilmsCardState createState() => _FilmsCardState();
}

class _FilmsCardState extends State<FilmsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.amber,offset: Offset(20.0,20.0))]
            ),
            child: widget.filmsCard,
          ),
        )
      ],
    );
  }
}
