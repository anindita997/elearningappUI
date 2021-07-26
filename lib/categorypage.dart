import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List data = [
    {
      'color': Colors.purpleAccent,
      'title': 'Marketing',
      'subtitle': '12 courses'
    },
    {'color': Colors.grey, 'title': 'Design', 'subtitle': '17 courses'},
    {
      'color': Colors.lightBlueAccent,
      'title': 'Math',
      'subtitle': '15 courses'
    },
    {
      'color': Colors.greenAccent,
      'title': 'Chemistry',
      'subtitle': '20 courses'
    },
    {'color': Colors.blueGrey, 'title': 'Graphics', 'subtitle': '12 courses'},
    {
      'color': Colors.pinkAccent[100],
      'title': 'Flutter',
      'subtitle': '12 courses'
    },
    {
      'color': Colors.purpleAccent[100],
      'title': 'Biology',
      'subtitle': '12 courses'
    },
    {'color': Colors.lime, 'title': 'Science', 'subtitle': '12 courses'},
    {
      'color': Colors.orangeAccent[100],
      'title': 'Physics',
      'subtitle': '12 courses'
    },
    {'color': Colors.cyan, 'title': 'Science', 'subtitle': '12 courses'},
    {'color': Colors.lime, 'title': 'Science', 'subtitle': '12 courses'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text(
          "Course Categories",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 5.0),
                itemCount: data.length,
                itemBuilder: (BuildContext context,int index) {
                  return Card(
                    shadowColor: Colors.grey[200],
                    margin: EdgeInsets.all(10.0),
                    color: data[index]['color'],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListTile(
                      title: Text(
                        data[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        data[index]['subtitle'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
