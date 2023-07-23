import 'package:a13_proje/model/pokemon_model.dart';
import 'package:a13_proje/services/pokedex_api.dart';
import 'package:a13_proje/widgets/pokelist_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: PokeApi.getPokemonData(), //PokeApi sınıfından metoda ulaştık ***
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ScreenUtil().orientation == Orientation.portrait
                    ? 2
                    : 3), //yatay ve dikey ekranda gösterilecek card sayısı
            itemBuilder: (context, index) =>
                PokeListItem(pokemon: _listem[index]),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Hata çikti'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
