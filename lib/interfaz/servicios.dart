import 'package:flutter/material.dart';
import 'package:reemp_flutter/interfaz/meeting.dart';
import 'package:reemp_flutter/interfaz/resident.dart';
import 'package:reemp_flutter/interfaz/togo.dart';
import 'package:reemp_flutter/interfaz/video.dart';

class Servicios extends StatefulWidget {
  const Servicios({Key? key}) : super(key: key);

  @override
  ServiciosState createState() => ServiciosState();
}

class ServiciosState extends State<Servicios> {
  @override
  void initState() {
    super.initState();
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
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5), fontSize: 18),
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
          body: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        const BoxShadow(
                          color: Color(0xff5CBEF8),
                          blurRadius: 3,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        BoxShadow(
                          color: const Color(0xff5CBEF8).withOpacity(0.13),
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ToGo())),
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff5CBEF8),
                                      blurRadius: 3,
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    )
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/car.png',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Meeting())),
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff5CBEF8)
                                          .withOpacity(0.3),
                                      blurRadius: 15,
                                      spreadRadius: 2,
                                      blurStyle: BlurStyle.outer,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/store.png',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Resident())),
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff5CBEF8),
                                      blurRadius: 3,
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    )
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/desktop.png',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Video())),
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff5CBEF8),
                                      blurRadius: 3,
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.video_camera_back,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 127),
                  Center(
                    child: Icon(
                      Icons.info,
                      color: Colors.white.withOpacity(0.6),
                      size: 33,
                    ),
                  ),
                  const SizedBox(height: 31),
                  const Text('Aun no configuras tus coberturas de servicios',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  const SizedBox(height: 20),
                  Text(
                      'Elige y configura las modalidades con las que te gustaria disponer de tus servicios y generar encuentros con tus usuarios',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 14))
                ],
              ))),
    );
  }
}
