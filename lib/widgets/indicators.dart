import 'package:flutter/material.dart';

class Indicators extends StatelessWidget {
  const Indicators({
    Key? key,
    required this.select,
  }) : super(key: key);
  final bool select;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: select? Colors.red:Colors.grey,
          border: select? Border.all(width: 2,color: Color(0xff3F3D56).withOpacity(0.7)):Border()
        ),
      ),
    );
  }
}
