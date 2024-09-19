import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49d0b0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff49d0b0),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Bulbasaur',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ItemTypeWidget(text: 'Grass'),
                        ItemTypeWidget(text: 'Grass'),
                      ],
                    )
                  ],
                ),
                Text(
                  '#001',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      //IMAGEN DEL POKEMON:

                      //DATA DEL POKEMON:
                      Text('Abaut Pokemon'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
