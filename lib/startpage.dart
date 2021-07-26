import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_app/onboardingpage.dart';

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 90.0,
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                    border: Border.all(color: Colors.white, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrange
                            .withOpacity(0.5), //color of shadow
                        spreadRadius: 40, //spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.deepOrangeAccent
                            .withOpacity(0.5), //color of shadow
                        spreadRadius: 80, //spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80.0,
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/edu.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "E-Learning App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180.0,
                ),
                Text(
                  "Learn anything",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Anytime anywhere",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => onboarding()));
                    },
                    color: Colors.teal,
                    child: Text(
                      "Start Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
