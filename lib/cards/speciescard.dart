import 'package:flutter/material.dart';
class SpeciesCard extends StatefulWidget {
  final SpeciesCard speciesCard;
  SpeciesCard({Key key,@required this.speciesCard}):super();
  @override
  _SpeciesCardState createState() => _SpeciesCardState();
}

class _SpeciesCardState extends State<SpeciesCard> {
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
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.deepPurple,offset: Offset(10.0,10.0))
            ]),
          child: widget.speciesCard,
          ),
        )
      ],
    );
  }
}
