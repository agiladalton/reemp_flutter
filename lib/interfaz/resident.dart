import 'package:flutter/material.dart';

class Resident extends StatefulWidget {
  const Resident({Key? key}) : super(key: key);

  @override
  ResidentState createState() => ResidentState();
}

class ResidentState extends State<Resident> {
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
                            Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(15),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff5CBEF8),
                                    blurRadius: 2,
                                    blurStyle: BlurStyle.outer,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/car.png',
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
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
                            Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                boxShadow: [
                                  const BoxShadow(
                                    color: Color(0xff5CBEF8),
                                    blurRadius: 3,
                                    blurStyle: BlurStyle.outer,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: -10,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                  BoxShadow(
                                    color: const Color(0xff5CBEF8)
                                        .withOpacity(0.2),
                                    spreadRadius: -5,
                                    blurRadius: 1,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 4,
                                    blurRadius: 5,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/desktop.png',
                              ),
                            ),
                            Container(
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
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.video_camera_back,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Modalidad | ',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18)),
                      TextSpan(
                          text: 'Resident',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 20))
                    ]),
                  ),
                  const SizedBox(height: 14),
                  Text(
                      'Dispon de tu consultorio u oficina para ofrecer tus servicios.',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 16)),
                  const SizedBox(height: 152),
                  Center(
                    child: Icon(
                      Icons.settings,
                      color: Colors.white.withOpacity(0.6),
                      size: 52,
                    ),
                  ),
                  const SizedBox(height: 31),
                  Text(
                      'Aun no agregas las zonas a donde dispondras tus servicios en esta modalidad',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 14)),
                  const SizedBox(height: 75),
                  Center(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff316280),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                      ),
                      icon: const Icon(
                        Icons.add_circle,
                        color: Color(0xff5bbdf7),
                      ),
                      onPressed: () {},
                      label: const Text('Agregar consultorios/oficinas',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5bbdf7),
                          )),
                    ),
                  )
                ],
              ))),
    );
  }
}
