import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reemp_flutter/interfaz/servicios.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), _onShowService);
  }

  void _onShowService() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Servicios()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          shadowColor: Colors.transparent,
          titleSpacing: 0,
          leadingWidth: 0,
          title: Row(children: [
            IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white.withOpacity(0.5),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text(
              'Ajustes',
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 18),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                'Cobertura de servicios',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5), fontSize: 18),
              ),
            ),
          ],
        ),
        body: Center(
          child: Image.asset(
            'assets/logo.png',
          ),
        ),
      ),
    );
  }
}
