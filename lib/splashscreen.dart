import 'package:flutter/material.dart';
import 'package:dwxphotography/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homepage()

    }); //Futurer.delayed
  
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(color: Theme.of(context).primaryColor),
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.photo_camera,
                          color: Theme.of(context).primaryColor,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 32),
                  child: Text(
                    'Copyright By Kelompok 14',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
