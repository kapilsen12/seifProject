import 'package:flutter/material.dart';
import 'package:selfproject/productOverView.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final TextEditingController searchCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: searchCont,
              decoration: InputDecoration(
                labelText: 'search for items in the store',

                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
