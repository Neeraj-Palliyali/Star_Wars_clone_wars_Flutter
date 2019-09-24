import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VehicleCard extends StatefulWidget {
final Widget vehicleCard;
VehicleCard({Key key,@required this.vehicleCard}):super();
  @override
  _VehicleCardState createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          margin:EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(boxShadow:
            [BoxShadow(color: Colors.purpleAccent,offset:Offset(20.0,20.0))]),
          child: widget.vehicleCard,

          ),
        )
      ],
    );
  }
}
