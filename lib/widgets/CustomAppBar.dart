import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final IconData lefticon;
  final IconData righticon;
  final Function? leftCallBack;

  //Metodo Construtor
  CustomAppBar(this.lefticon, this.righticon, {this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 45,
        //top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallBack != null ? () => leftCallBack!() : null,
            child: _buildIcon(lefticon),
          ),
          _buildIcon(righticon),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
