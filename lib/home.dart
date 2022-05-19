import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clássicos"),
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.white,
      ),
      body: paginaLayout(),
    );
  }

  paginaLayout() {
    double tamanhoFotosAltura = 100;
    return Container(
      color: Color.fromRGBO(49, 218, 141, 1),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Color.fromRGBO(49, 218, 141, 1),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(
                          image: NetworkImage("Assets/Imagens/capuccino.png"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0.1,
                            offset: Offset(2, 4))
                      ]),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(
                          image: NetworkImage("Assets/Imagens/capuccino.png"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0.1,
                            offset: Offset(2, 4))
                      ]),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(
                          image: NetworkImage("Assets/Imagens/capuccino.png"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0.1,
                            offset: Offset(2, 4))
                      ]),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Color.fromRGBO(49, 218, 141, 1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [Text("Imagem")],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [Text("Titulo")],
                          ),
                          Row(
                            children: [Text("Descrição")],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(),
                  Row(),
                  Row(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("data")],
              ),
            ),
          )
        ],
      ),
    );
  }
}
