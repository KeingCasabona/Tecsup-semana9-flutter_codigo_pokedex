import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_data_widget.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          Positioned(
            top: height * 0.12,
            right: -30,
            child: Image.asset(
              'assets/images/pokeball.png',
              height: 200,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
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
                    clipBehavior: Clip.none,
                    children: [
                      //IMAGEN DEL POKEMON:
                      Positioned.fill(
                        top: -90,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.network(
                              'http://www.serebii.net/pokemongo/pokemon/001.png'),
                        ),
                      ),
                      //DATA DEL POKEMON:
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              'About',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            ItemDataWidget(
                              title: 'Height',
                              data: '1.5 m',
                            ),
                            ItemDataWidget(
                              title: 'Height',
                              data: '1.5 m',
                            ),
                            ItemDataWidget(
                              title: 'Height',
                              data: '1.5 m',
                            ),
                            ItemDataWidget(
                              title: 'Height',
                              data: '1.5 m',
                            ),
                          ],
                        ),
                      )
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
