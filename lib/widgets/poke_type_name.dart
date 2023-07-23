import 'package:a13_proje/constant/constant.dart';
import 'package:a13_proje/model/pokemon_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Expanded(child: Text(pokemon.name ?? '', style: Constant.getPokemonNameTextStyle(),)),
          Text('#${pokemon.num}',style: Constant.getPokemonNameTextStyle()),
        ]),
        SizedBox(height: 0.02.sh,),
        Chip(label: Text(pokemon.type?.join(' , ') ?? '' , style: Constant.getTypeChipTextStyle(),)) ,
      ],),
    );
  }
}
