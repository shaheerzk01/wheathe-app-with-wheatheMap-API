import 'package:flutter/material.dart';
import 'package:climate/utilities/constants.dart';

class CityScreen extends StatefulWidget {

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2f3e35),
        shadowColor: Colors.cyan.shade300,
        title: Padding(
          padding: EdgeInsets.only(left: 95.0),
          child: Text('CLIMA'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/city_background.jpg'),
          fit: BoxFit.cover,
        )),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: kTextfeildInputDecoration,
                  onChanged: (value){
                    cityName = value;
                  },
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 100,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                          side: const BorderSide(
                            width: 2.0,
                          )
                      ),
                      onPressed: () {
                        Navigator.pop(context, cityName);
                      },
                      child: Text(
                        'Get Weather',
                        style: kButtonTextStyle,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
