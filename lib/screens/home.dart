import 'package:flutter/material.dart';
import 'package:climate/screens/loading_screen.dart';
import 'package:climate/screens/city_screen.dart';
import 'package:climate/utilities/constants.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2f3e35),
        shadowColor: Colors.cyan.shade300,
        title: Padding(
          padding: EdgeInsets.only(left: 150.0),
          child: Text('CLIMA'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xFF2f3e35),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'WELCOME!',
                    style: kButtonTextStyle
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(
                      width: 2.0,
                    )
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoadingScreen();
                      },
                    ),
                  );
                },
                child: Text('Current Weather',
                style: kButtonTextStyle),
              ),
            ],
          )
        ),
      ),
    );
  }
}
