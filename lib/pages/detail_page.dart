import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/model/pokemon_model.dart';
import 'package:flutter_codigo_pokedex/ui/general/colors.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_data_widget.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemonModel;

  const DetailPage({
    super.key,
    required this.pokemonModel,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorsPokemon[pokemonModel.type.first],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                      children: pokemonModel.type
                          .map((e) => ItemTypeWidget(text: e))
                          .toList(),
                    )
                  ],
                ),
                Text(
                  '#${pokemonModel.numPokemon}',
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
                        top: -170,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.network(
                              pokemonModel.img,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      //DATA DEL POKEMON:
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              pokemonModel.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            ItemDataWidget(
                              title: 'Height',
                              data: pokemonModel.height,
                            ),
                            ItemDataWidget(
                              title: 'Weight',
                              data: pokemonModel.weight,
                            ),
                            ItemDataWidget(
                              title: 'Candy',
                              data: pokemonModel.candy,
                            ),
                            ItemDataWidget(
                              title: 'Candy Count',
                              data: pokemonModel.candyCount.toString(),
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
