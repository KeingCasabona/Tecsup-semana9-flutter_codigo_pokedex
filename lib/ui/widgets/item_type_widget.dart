import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  final String text;
  ItemTypeWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6, right: 6),
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: Offset(4, 4),
            blurRadius: 12,
          ),
        ],
      ),
    );
  }
}
