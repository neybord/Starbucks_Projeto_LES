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
    double tamanhoFotosAltura = 80;
    return Container(
      color: Color.fromRGBO(49, 218, 141, 1),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xAAFF0000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                  child: Text("Container1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xAAFF0000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                  child: Text("Container2"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xAAFF0000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  width: 100,
                  height: tamanhoFotosAltura,
                  child: Text("Container3"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
