import 'package:a13_proje/constant/ui_helper.dart';
import 'package:a13_proje/model/pokemon_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(pokemon.img);
    String pokeballImageUrl='images/pokeball.png';
    return Stack(  //üst üste yapılar varsa akla ilk gelmesi gereken Stack'dir
      children: [
        Align(alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(alignment: Alignment.bottomRight,
       //     child:Image.network(pokemon.img!),
         child:CachedNetworkImage(   //Image.network'un farklı gösterimi
              imageUrl: pokemon.img!, //catche.. pubspec.yaml'e ekleme yapıldı
           errorWidget: (context, url, error) => Icon(Icons.ac_unit),
            width: UIHelper.calculatePokeImgAndBallSize(),
              height: UIHelper.calculatePokeImgAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: UIHelper.getColorFromType(pokemon.type![0]) ,   // rengini pokemona göre ayarlama

              ),
            ),

        )
      ],
    );
  }
}
