import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_pokemon_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pokemons = [];

  @override
  void initState() {
    super.initState();
    getDataPokemon();
  }

  getDataPokemon() async {
    Uri _uri = Uri.parse(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      pokemons = myMap['pokemon'];
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pokedex',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
                GridView.count(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.30,
                    children: pokemons
                        .map(
                          (e) => ItemPokemonWidget(
                            name: e['name'],
                            image: e['img'],
                            type: List<String>.from(
                                e['type'].map((item) => item)),
                          ),
                        )
                        .toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
