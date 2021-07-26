import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:full_app/registerpage.dart';
import 'package:full_app/homepage.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
class _loginState extends State<login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Center(child: Image(image: AssetImage("assets/lg.jpg"))),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Welcome To Log In",
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                Text(
                  "Please log in to continue using the app",
                  style: TextStyle(letterSpacing: 0.9),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0),
                  child: TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value.isEmpty || !RegExp(r'^(?@?)').hasMatch(value)) {
                        return 'Invalid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.pink[50],
                        filled: true,
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextFormField(
                    obscureText: _obscure,
                    controller: password,
                    validator: (value) {
                      if (value.isEmpty || value.length<8) {
                        return 'Invalid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.pink[50],
                        filled: true,
                        labelText: "Email",
                        prefixIcon: Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                            color: Colors.black,
                            icon: Icon(_obscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            }),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>home()));


                    },
                    color: Colors.teal,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                RichText(
                  text: TextSpan(
                      text: " Have not an Account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer() ..onTap=() {
                            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Register()));
                          },
                          text: " Register",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
