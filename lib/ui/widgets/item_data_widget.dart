import 'package:flutter/material.dart';

class ItemDataWidget extends StatelessWidget {
  final String title;
  final String data;
  const ItemDataWidget({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(data),
        ],
      ),
    );
  }
}
