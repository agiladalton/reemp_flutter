import 'package:flutter/material.dart';
import 'package:reemp_flutter/interfaz/configuracion.dart';

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  SelectorState createState() => SelectorState();
}

class SelectorState extends State<Selector> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          titleSpacing: 0,
          title: Row(children: [
            IconButton(
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              onPressed: () {
                // ignore: todo
                // TODO: implement back button
              },
            ),
            const Text(
              'Regresar',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ]),
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/person_pin_circle.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 200,
                height: 63,
                child: Text(
                  'Facilita y amplía tus encuentros',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                  'Selecciona las modalidades en las que dispondras este servicio.',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xff1A1E22),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Image.asset(
                      'assets/car.png',
                    ),
                  ),
                  Container(
                    width: 71,
                    height: 71,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xff9c9c9c),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Image.asset(
                      'assets/store.png',
                    ),
                  ),
                  Container(
                    width: 71,
                    height: 71,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xff9c9c9c),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Image.asset(
                      'assets/desktop.png',
                    ),
                  ),
                  Container(
                    width: 71,
                    height: 71,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xff9c9c9c),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: const Icon(
                      Icons.video_camera_back,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'To go',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                ', lleva tu servicio hasta donde el usuario lo solicite.'),
                      ])),
              const SizedBox(
                height: 75,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xff5CBEF8),
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Configuracion()));
                  },
                  child: const Text('Siguiente'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
