
import 'package:flutter/material.dart';
import 'package:full_app/categorypage.dart';
import 'package:full_app/coursespage.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal[700],
        actions: [
          Container(
            margin: EdgeInsets.only(top: 6.0, right: 10.0),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                Border.all(color: Colors.white, width: 1.0),
                image: DecorationImage(
                  image: AssetImage("assets/pp.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
      drawer: DrawerHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  color: Colors.teal[700],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0, bottom: 4.0),
                      child: Text(
                        "Find A Course You Want To Learn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Text(
                        "John Deo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 85.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "search",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Popular Courses",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: (){
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                      height: 10.0,
                    ),
                    Image(
                      height: 65,
                      width: 130,
                      image: AssetImage(
                        "assets/math.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: ListTile(
                        title: Text(
                          "Matrix and Operations of Matrix",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: Text(
                          "Class 12: Maths",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                      height: 10.0,
                    ),
                    Image(
                      height: 65,
                      width: 130,
                      image: AssetImage(
                        "assets/chem.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: ListTile(
                        title: Text(
                          "Organic Chemistry ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: Text(
                          "Class 12: Chemistry",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                       InkWell(
                         child: Text(
                          "see all",
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 16,
                          ),
                      ),
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Category()));
                         },
                       ),

                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Courses()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              "Marketing",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              "17 Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Courses()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              "Design",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              "17 Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Courses()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              "Science",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              "17 Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Courses()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              "Math",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              "17 Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
