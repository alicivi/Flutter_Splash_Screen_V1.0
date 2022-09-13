import 'package:flutter/material.dart';

// ignore: unused_import
import 'home_view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // ignore: unused_label
    debugShowCheckedModeBanner:
    false;
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    // ignore: use_build_context_synchronously, prefer_const_constructors
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
        body: Container(
            color: Colors.white,
            child: const Center(
                child: Text('Splash Scree Logo',
                    style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontFamily: 'Roboto')))));
  }
}
