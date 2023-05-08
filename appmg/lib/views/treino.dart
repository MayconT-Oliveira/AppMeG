// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:appmg/views/financeiro.dart';
import 'package:appmg/views/manutancao.dart';
import 'package:flutter/material.dart';
import 'package:appmg/views/home.dart';
import 'package:appmg/views/imc.dart';

class Treino extends StatefulWidget {
  const Treino({super.key});

  @override
  State<Treino> createState() => _TreinoState();
}

class _TreinoState extends State<Treino> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'home 0: Home',
      style: optionStyle,
    ),
    Text(
      'imc 1: Business',
      style: optionStyle,
    ),
    Text(
      'treino 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _abrirIMC() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Imc()));
  }

  void _abrirHome() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeMG()));
  }

  void _abrirFina() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Financeiro()));
  }

  void _abrirManu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Manutencao()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(32, 5, 40, 1),
        shadowColor: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(32, 5, 40, 1),
              ),
              child: Image.asset("imagens/Logo.png"),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "Meu Perfil",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirManu();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "M&G Fitness",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirHome();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on_outlined,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "Financeiro",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirFina();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fitness_center,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "Meu Treino",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monitor_weight,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "IMC",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirIMC();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "Configurações",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirManu();
              },
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(32, 5, 40, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "MEU TREINO",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.amber,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.black,
                )
              ],
            ),
            onPressed: () {
              _abrirHome();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Text(
              "DIVISÕES DE TREINO",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ]),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator();
                },
                child: Text(
                  'A   Tríceps, Abdômen,...         >',
                  style: TextStyle(color: Colors.black, shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white,
                    )
                  ]),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ))),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator();
                },
                // ignore: sort_child_properties_last
                child: Text(
                  'B   Bíceps, Abdômen,...          >',
                  style: TextStyle(color: Colors.black, shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white,
                    )
                  ]),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ))),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator();
                },
                // ignore: sort_child_properties_last
                child: Text(
                  'C   Lombar, Pernas                 >',
                  style: TextStyle(color: Colors.black, shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white,
                    )
                  ]),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ))),
            SizedBox(
              height: 50,
            ),
            Text(
              "Você pode pedir um vono treino ou aumentar o prazo do atual pelo app!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
