import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap, this.width})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: width,
        decoration: BoxDecoration(
          color: HexColor("#FF9D17"),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

