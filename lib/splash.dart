// ignore_for_file: unnecessary_new, prefer_const_constructors, import_of_legacy_library_into_null_safe, unused_import, unused_label, empty_statements, unused_field

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  static bool isCir = false;

  startTime() async {
    var _duration = const Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }
  
 Widget circle(){
      return CircularProgressIndicator(
        valueColor:
          new AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 5.0,
      );
  }

  @override
  void initState() {
    super.initState();
    startTime();
    // navigationPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red.shade400, Color.fromARGB(255, 255, 50, 118)]),
                  
          ),
          child: Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset('cute_pink.jpg'),
                const SizedBox(
                  height: 45.0,
                ),
                circle()

/*                                                BUTTON WILL BE ADDED WHEN NEEDED
                ElevatedButton(
                  onPressed: (){
                    startTime();
                    isCir = true;
                    circle();
                  },
                  child: Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                    ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(Size(140, 60)),
                    animationDuration: Duration(seconds: 2),
                    elevation: MaterialStateProperty.all(0)
                    ),
                  ),
                */
              ],
            ),
          ),
        ));
  }
}

