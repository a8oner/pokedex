import 'package:a13_proje/widgets/app_title.dart';
import 'package:a13_proje/widgets/pokemon_list.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}

