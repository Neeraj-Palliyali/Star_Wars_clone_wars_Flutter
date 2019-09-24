import 'dart:convert' show jsonDecode;

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get, Response;
import 'package:star_wars_the_clone_wars/cards/filmscard.dart';
import 'package:star_wars_the_clone_wars/cards/peoplcard.dart';
import 'package:star_wars_the_clone_wars/cards/speciescard.dart';
import 'package:star_wars_the_clone_wars/cards/starshipcard.dart';
import 'package:star_wars_the_clone_wars/cards/vehiclecard.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String category;
  Map rawJson;
  String id;

  Future<Map> fetchInfo(category, number) async {
    try {
      final Response response = await get(
          'https://swapi.co/api/$category/$number',
          headers: {"Content-Type": "application/json"});
      rawJson = jsonDecode(response.body);
      if (response.statusCode == 200) {
//        print(rawJson);
        return (rawJson);
      }
    } catch (error) {
      // show error to user
      print(error);
    }
  }

  Widget buildCard() {
    switch (category) {
      case "films":
//                        setState(()  {
//                          rawJson = await fetchInfo(category, id);
//                        });
        return FilmsCard(filmsCard: Text("$rawJson"),

        );
        break;
      case "people":
//                        setState(()  {
//                          rawJson = await fetchInfo(category, id);
//                        });
        return PeopleCard(
          people: Text("$rawJson"),
        );
        break;
      case "species":
//                        setState(() {
//                          rawJson= await fetchInfo(category, id);
//                        });
        return SpeciesCard(
          speciesCard: Text("$rawJson"),
        );
        break;
      case "starships":
//                        setState(() {
//                          rawJson= await fetchInfo(category, id);
//                        });
        return StarShipCard(
          starShipCard: Text("$rawJson"),
        );
        break;
      case "vehicles":
//                        setState(() {
//                          rawJson= await fetchInfo(category, id);
//                        });
        return VehicleCard(
          vehicleCard: Text("$rawJson"),
        );
        break;
//      case "planets":
      default:
        return Container();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Star Wars The Clone Wars',
    home: Scaffold(
    appBar: AppBar(
    title: Text('Star Wars Clone Wars'),
    elevation: .3,
    leading: Icon(Icons.create),
    ),
    body: ListView(
    children: <Widget>[
    Row(
    children: <Widget>[
    Expanded(
    child: Container(
    padding: EdgeInsets.only(left: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Number',
                      ),
                      onChanged: (String value) =>
                          this.setState(() => id = value),
                    ),
                  ),
                ),
                Container(
                  child: DropdownButton<String>(
                    value: category,
                    items: [
                      DropdownMenuItem(
                        value: "films",
                        child: Text("Films"),
                      ),
                      DropdownMenuItem(
                        value: "people",
                        child: Text("People"),
                      ),
                      DropdownMenuItem(
                        value: "planets",
                        child: Text("Planets"),
                      ),
                      DropdownMenuItem(
                        value: "species",
                        child: Text("Species"),
                      ),
                      DropdownMenuItem(
                        value: "starships",
                        child: Text("Starships"),
                      ),
                      DropdownMenuItem(
                        value: "vehicles",
                        child: Text("Vehicles"),
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        category = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Column(

              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    rawJson = await fetchInfo(category, id);
                  },
                  icon: Icon(Icons.call_to_action),
                  label: Text('Start War'),
                ),

              ],
            ),
            buildCard(),
          ],
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
