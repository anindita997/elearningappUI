import 'package:flutter/material.dart';

class data extends StatelessWidget {
  final image;
  final description;
  data({
    this.image,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.orange,
      child: Column(
        children: [
         // SizedBox(height: 30.0,),
          Image(
            image: AssetImage(image),
            width: Width*0.9,
            //height: 200,
          ),
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
          )
        ],
      ),
    );
  }
}
