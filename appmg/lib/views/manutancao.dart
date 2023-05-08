import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:appmg/views/financeiro.dart';
import 'package:appmg/views/imc.dart';
import 'package:appmg/views/home.dart';
import 'package:appmg/views/treino.dart';
import 'package:flutter/material.dart';

class Manutencao extends StatefulWidget {
  const Manutencao({super.key});

  @override
  State<Manutencao> createState() => _ManutencaoState();
}

class _ManutencaoState extends State<Manutencao> {
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

  void _abrirManu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Manutencao()));
  }

  void _abrirFina() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Financeiro()));
  }

  void _abrirTreino() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Treino()));
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
        actions: [
          IconButton(
            onPressed: () {
              _abrirHome();
            },
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
          )
        ],
        centerTitle: true,
        title: Text(
          "EM DESENVOLVIMENTO",
          textAlign: TextAlign.center,
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 1,
            ),
            Icon(
              Icons.warning,
              color: Colors.amber,
              size: 150,
            ),
            SizedBox(height: 30),
            Text(
              "No momento está tela ainda não esta funcionando...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            SizedBox(height: 30),
            Text(
              "Consulte novamente está tela nas proximas atualizações :(",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
