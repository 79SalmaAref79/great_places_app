import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'great_places.dart';
import 'places_list.dart';
import 'add_places.dart';
import 'place_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
          home: PlacesList(),
          routes: {
            AddPlace.routeName: (ctx) => AddPlace(),
            PlaceDetail.routeName: (ctx) => PlaceDetail(),
          }),
    );
  }
}
