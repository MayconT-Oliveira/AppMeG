// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:appmg/views/manutancao.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:appmg/views/financeiro.dart';
import 'package:appmg/views/imc.dart';
import 'package:appmg/views/home.dart';
import 'package:appmg/views/treino.dart';
import 'package:flutter/material.dart';

class HomeMG extends StatefulWidget {
  const HomeMG({super.key});

  @override
  State<HomeMG> createState() => _HomeMGState();
}

class _HomeMGState extends State<HomeMG> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: imc',
      style: optionStyle,
    ),
    Text(
      'Index 2: treino',
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

  void _abrirFinanceiro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Financeiro()));
  }

  void _abrirTreino() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Treino()));
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
                _abrirFinanceiro();
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
                _abrirTreino();
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
          "M&G Fitness",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 25,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "imagens/image1.jpg",
            ),
            SizedBox(height: 30),
            Container(
              color: Color.fromRGBO(32, 5, 40, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _abrirIMC();
                    },
                    child: Icon(
                      Icons.monitor_weight,
                      color: Colors.amber,
                      size: 90,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      _abrirFinanceiro();
                    },
                    child: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.amber,
                      size: 90,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      _abrirTreino();
                    },
                    child: Icon(
                      Icons.fitness_center,
                      color: Colors.amber,
                      size: 90,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "IMC",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 1.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text("FINANCEIRO",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    )),
                SizedBox(
                  width: 40,
                ),
                Text("TREINO",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
