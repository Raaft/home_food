import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'drinks_body.dart';

class DrinksHome extends StatelessWidget {
  const DrinksHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Drinks🍹",style: TextStyle(fontSize: 30,color: HexColor("#022136")),),
      ),
      body: const DrinksBody(),
    );
  }
}
