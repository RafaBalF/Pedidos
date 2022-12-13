// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/menu.dart';
import 'package:pedidos/pedidos.dart';
//import 'package:audio';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bebidas.Online',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'B-On Pedidos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final json = {
    "codigo": 123,
    "cliente": 'Elvis Prasley',
    "status": {
      "canceladoPor": 'Company',
      "obs": 'Pedido cancelado pelo estabelecimento.',
      "dataPedido": '2022-12-03 10:16',
      "dataCancelado": '2022-12-03 11:16',
    },
    "data": '2022-12-03 20:16',
    "valor": 53.90,
  };

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    var pedidos = Pedidos.fromJson(widget.json);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            items: items,
            controller: page,
            footer: const Text("Guia"),
            onDisplayModeChanged: (mode) {
              print(mode);
            },
            style: SideMenuStyle(
              backgroundColor: Colors.black87,
              selectedColor: Colors.amber,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(this.context).size.width - 330,
                  height: 150,
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sua loja está Online'),
                      SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          final play = AudioPlayer();
                          play.play(
                              AssetSource("Mud_Lonely_This_Christmas.mp3"));
                        },
                        backgroundColor: Colors.green,
                        child: Icon(Icons.power_settings_new),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 50,
                        color: Colors.amber,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text('Codigo'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('Cliente'),
                            SizedBox(
                              width: 200,
                            ),
                            Text('Status'),
                            SizedBox(
                              width: 250,
                            ),
                            Text('Data'),
                            SizedBox(
                              width: 130,
                            ),
                            Text('Valor'),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 330,
                        height: 150,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _label("Codigo", pedidos.codigo.toString()),
                            _label("Cliente", pedidos.cliente),
                            Column(
                              children: [
                                _label("Cancelado por",
                                    pedidos.status.canceladoPor),
                                _label("OBS", pedidos.status.obs),
                                _label("Pedido feito em",
                                    pedidos.status.dataPedido.toString()),
                                _label("Pedido cancelado em",
                                    pedidos.status.dataCancelado.toString()),
                              ],
                            ),
                            _label("Data", pedidos.data.toString()),
                            _label("Valor", pedidos.valor.toString()),
                            FloatingActionButton(
                              elevation: 10,
                              focusColor: Colors.amber,
                              onPressed: () => {},
                              child: const Icon(Icons.visibility),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _label(String label, String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text("$label: "),
            Text(value),
          ],
        ),
      );
}
