import 'dart:convert' show jsonDecode;

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get, Response;
import 'package:star_wars_the_clone_wars/models/card.dart';

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

  Future<void> fetchInfo(category, number) async {
    try {
      final Response response = await get(
          'https://swapi.co/api/$category/$number',
          headers: {"Content-Type": "application/json"});
      rawJson = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(rawJson);
      } else {
        print('show error to user');
      }
    } catch (error) {
      // show error to user
      print(error);
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

                  onPressed: () {if(category!=null && id != null){
                    fetchInfo(category, id);}
                    else{
                      print("Error");
                  }

                  },
                  icon: Icon(Icons.call_to_action),
                  label: Text('Start War'),
                ),
                AppCard(

                  child: Text(
                    "this $rawJson",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
