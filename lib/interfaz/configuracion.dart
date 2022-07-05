import 'package:flutter/material.dart';
import 'package:reemp_flutter/interfaz/splash.dart';

class Configuracion extends StatefulWidget {
  const Configuracion({Key? key}) : super(key: key);

  @override
  ConfiguracionState createState() => ConfiguracionState();
}

class ConfiguracionState extends State<Configuracion> {
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
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text:
                      const TextSpan(style: TextStyle(fontSize: 29), children: [
                TextSpan(
                  text: 'Configura y habilita',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff5CBEF8)),
                ),
                TextSpan(
                  text: ' tus coberturas de servicio',
                  style: TextStyle(color: Colors.white),
                ),
              ])),
              const SizedBox(
                height: 6,
              ),
              Text(
                  'Te ofrecemos mayores alternativas para ofrecer tus servicios profesionales y expandir la cobertura de ellos.',
                  style: TextStyle(
                      fontSize: 16, color: Colors.white.withOpacity(0.7))),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 400,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 130,
                      child: Container(
                        width: 55,
                        height: 55,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 3,
                              blurStyle: BlurStyle.outer,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/car.png',
                          scale: 1.4,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      bottom: 0,
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                            BoxShadow(
                              color: const Color(0xff5CBEF8).withOpacity(0.3),
                              spreadRadius: -15,
                              blurRadius: 4,
                              offset: const Offset(
                                  0, 1), // changes position of shadow
                            ),
                            BoxShadow(
                              color: const Color(0xff5CBEF8).withOpacity(0.2),
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
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/store.png',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 40,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 3,
                              blurStyle: BlurStyle.outer,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/desktop.png',
                          scale: 1.4,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 40,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 3,
                              blurStyle: BlurStyle.outer,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.video_camera_back,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text('Meeting',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 29)),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                      'Genera encuentros en tus cafés o coworkings favoritos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18))),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff316280),
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Splash()));
                  },
                  child: const Text('Configurar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5bbdf7),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
