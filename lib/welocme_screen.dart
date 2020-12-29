import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3571B8),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 50, left: 10),
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/DBU_News_welcome screen BG.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                    height: 80,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'DBU NEWS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Buttons(text: 'Students', color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 20),
                  child: Buttons(text: 'Staffs', color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  String text;
  Color color;

  Buttons({this.color, this.text});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {

      },
      elevation: 5,
      color: color,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blueAccent.shade400,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}
