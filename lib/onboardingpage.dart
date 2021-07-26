import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_app/onboard_data.dart';
import 'package:full_app/registerpage.dart';

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int current_page = 0;
  PageController _pageController = PageController();
  List<Widget> _list = [
    data(
      image: "assets/er.jpg",
      description: "Learn,                         Practice &                        Utilize Yourself",
    ),
    data(
      image: "assets/orlearn.jpg",
      description: "Learn With                      Our Experts",
    ),
  ];
  _onpagechanged(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _list.length,
            onPageChanged: _onpagechanged,
            itemBuilder: (context, int index) {
              return _list[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_list.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 12,
                    width: 12,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 40.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          (index == current_page) ? Colors.teal : Colors.white,
                    ),
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 50,
                  alignment: Alignment.center,
                  width:  200 ,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(35.0)),
                  child: (current_page == (_list.length - 1))
                      ? InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                      : Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20.0,)
            ],
          )
        ],
      ),
    );
  }
}
