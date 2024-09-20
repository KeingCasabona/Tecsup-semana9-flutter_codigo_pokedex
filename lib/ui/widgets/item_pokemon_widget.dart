import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/model/pokemon_model.dart';
import 'package:flutter_codigo_pokedex/pages/detail_page.dart';
import 'package:flutter_codigo_pokedex/ui/general/colors.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {
  // final String name;
  // final String image;
  // final List<String> type;

  final PokemonModel pokemonModel;
  ItemPokemonWidget({
    //   required this.name,
    //   required this.image,
    //   required this.type,
    required this.pokemonModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(pokemonModel: pokemonModel)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorsPokemon[pokemonModel.type.first],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -25,
              right: -18,
              child: Image.asset(
                'assets/images/pokeball.png',
                height: 120,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Image.network(
                pokemonModel.img,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/cargando3.png',
                    height: 100,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemonModel.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  //ES LO MISMO QUE LO DE ABAJO:
                  ...pokemonModel.type
                      .map((e) => ItemTypeWidget(text: e))
                      .toList(),
                  // Column(
                  //   children: type.map((e) => ItemTypeWidget()).toList(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
