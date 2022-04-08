import 'package:flutter/material.dart';
import 'package:travel_app/widgets/place_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Travel Blog",
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
          Expanded(flex: 2,child: PlaceWidget()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Most Popular", style: TextStyle(fontSize: 24.0)),
                Text("View all", style: TextStyle(fontSize: 16, color: Colors.deepOrange)),
              ],
            ),
          ),
          Expanded(child: Placeholder(), flex: 1,),
        ],
      ),
    );
  }
}
