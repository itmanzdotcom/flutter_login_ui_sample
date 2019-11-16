import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  Widget _buildPageContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                child: Icon(
                  Icons.whatshot,
                  size: 100.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  title: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Your Email",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.email,
                      color: Colors.white30,
                    )),
              )),
              Divider(
                color: Colors.greenAccent,
              ),
              ListTile(
                  title: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white30,
                    )),
              )),
              Divider(
                color: Colors.greenAccent,
              ),
              ListTile(
                  title: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white30,
                    )),
              )),
              Divider(
                color: Colors.greenAccent,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        // TODO action here
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.green,
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white70, fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final String background = 'images/img_background.jpg';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(background),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    decoration:
                        new BoxDecoration(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
              _buildPageContent(context),
            ],
          ),
        ),
      ),
    );
  }
}
