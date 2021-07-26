import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_app/homepage.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        backgroundColor: Colors.teal[700],
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Container(
                margin: EdgeInsets.only(left: 12.0),
                height: 27,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.teal[600],
                ),
                child: Center(
                  child: Text(
                    "DESIGN",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              title: Text(
                "UI/UX Design",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "10 Courses",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: ("Playlist"),
                ),
                Tab(
                  text: ("Review"),
                ),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.teal),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Basic part 1",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.alarm,
                                  ),
                                  Text(
                                    "29 min",
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.teal),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Basic part 2",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.alarm,
                                  ),
                                  Text(
                                    "29 min",
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.teal),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Basic part 3",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.alarm,
                                  ),
                                  Text(
                                    "29 min",
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.teal),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Basic part 4",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.alarm,
                                  ),
                                  Text(
                                    "29 min",
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 10.0,
                                        left: 10.0,
                                      ),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage("assets/pp.jpg"),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: ListTile(
                                          title: Text(
                                            "John Hardwin",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          trailing: Text("2d ago"),
                                          subtitle: Text(
                                              "gggggggg ggggggggggggg gggg ggggggg gggggggg ggggggg ggg gggggggg ggggggg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text("30 Likes"),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                    ),
                                    Text("15 Comments"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 10.0,
                                        left: 10.0,
                                      ),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage("assets/pp.jpg"),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: ListTile(
                                          title: Text(
                                            "Arika D'souza",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          trailing: Text("3d ago"),
                                          subtitle: Text(
                                              "gggggggg ggggggggggggg gggg ggggggg gggggggg ggggggg ggg gggggggg ggggggg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text("30 Likes"),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                    ),
                                    Text("15 Comments"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 10.0,
                                        left: 10.0,
                                      ),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage("assets/pp.jpg"),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: ListTile(
                                          title: Text(
                                            "Aliza Smith",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          trailing: Text("5d ago"),
                                          subtitle: Text(
                                              "gggggggg ggggggggggggg gggg ggggggg gggggggg ggggggg ggg gggggggg ggggggg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text("30 Likes"),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                    ),
                                    Text("15 Comments"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
