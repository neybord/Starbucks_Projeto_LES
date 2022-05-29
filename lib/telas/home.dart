import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/telas/Principal.dart';
import '../widgets/CustomAppBar.dart';
import 'package:starbucks/widgets/widget-input.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double tamanhoFotosAltura = 100;
  var selected = 0; //Valor do Index ao selecionar uma categoria

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 218, 141, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined, // Irei Adicionar o Carousel Aqui
            Icons.search_outlined,
          ),
          pesquisaCorpo(),
          Carousel(),
          paginaCorpo()
        ],
      ),
    );
  }

  pesquisaCorpo() {
    TextEditingController pesquisa = TextEditingController();
    return Container(
      margin: EdgeInsets.only(left: 50),
      width: 400,
      child: InputTexto("Pesquisar", "Digite nome da bebida",
          controller: pesquisa),
    );
  }

  paginaCorpo() {
    double tamanhoFotosAltura = 100;
    return Container(
      color: Color.fromRGBO(49, 218, 141, 1),
      width: double.infinity,
      child: fotosImoveis(),
    );
  }

  fotosImoveis() {
    double tamanhoFotosAltura = 100;
    return Column(
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
                    borderRadius: BorderRadius.circular(50),
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
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
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
                    borderRadius: BorderRadius.circular(50),
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
      ],
    );
  }
}
