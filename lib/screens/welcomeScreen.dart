import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:anaapp/screens/menuScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      //todo: PageView!!!
        backgroundColor: Colors.black,
        body: Container(
            child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/curious.jpg"),
                      fit: BoxFit.cover),
                ),
                child: SafeArea(
                    child: Stack(
                  children: <Widget>[
                    _welcomeWidget(screenSize),
                    _slideIntoApp(context)
                  ],
                )))));
  }

  Widget _welcomeWidget(Size screenSize) {
    return Positioned(
      bottom: 50.0,
      left: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome to',
            style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.06),
          ),
          Text('AnaApp',
              style: GoogleFonts.shrikhand(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.2,
                  letterSpacing: 2))
        ],
      ),
    );
  }

  Widget _slideIntoApp(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      right: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'slide to enter',
              style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  letterSpacing: 2),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.06,
              ),
              onPressed: () => Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => MenuScreen())))
        ],
      ),
    );
  }
}
