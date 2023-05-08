// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, body_might_complete_normally_nullable
import 'package:appmg/views/financeiro.dart';
import 'package:appmg/views/imc.dart';
import 'package:appmg/views/home.dart';
import 'package:appmg/views/manutancao.dart';
import 'package:appmg/views/treino.dart';
import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({super.key});

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String info = "Informe seus dados";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void calcular() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text) / 100;
      double imc = peso / (altura * altura);
      //print(imc);
      if (imc < 18.5) {
        info = "Abaixo do peso \n (Seu imc é ${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.5 && imc <= 24.9) {
        info = "Peso normal \n (Seu imc é ${imc.toStringAsPrecision(3)})";
      } else if (imc >= 25.0 && imc <= 29.9) {
        info = "Sobrepeso \n (Seu imc é ${imc.toStringAsPrecision(3)})";
      } else if (imc >= 30.0 && imc <= 34.9) {
        info = "Obesidade grau 1 \n (Seu imc é ${imc.toStringAsPrecision(3)})";
      } else {
        info = "Obesidade grau 2 \n (Seu imc é ${imc.toStringAsPrecision(3)})";
      }
    });
  }

  void resetCampos() {
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      info = "Informe seus dados";
    });
  }

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
          title: Text("Calculadora IMC",
              style: TextStyle(
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              )),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                resetCampos();
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
            ),
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
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.monitor_weight,
                      size: 50,
                      color: Colors.amber,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.8, 0.8),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                    labelText: "Peso (Kg)",
                    labelStyle: TextStyle(
                      color: Colors.amber,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.8, 0.8),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25),
                  controller: pesoController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "insira seu peso";
                    }
                  },
                ),
                SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.height,
                      size: 50,
                      color: Colors.amber,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.8, 0.8),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(
                      color: Colors.amber,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.8, 0.8),
                          blurRadius: 1.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25),
                  controller: alturaController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "insira sua altura";
                    }
                  },
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      calcular();
                    }
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.black,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  info,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.8, 0.8),
                        blurRadius: 1.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
