import 'package:a13_proje/constant/ui_helper.dart';
import 'package:a13_proje/model/pokemon_model.dart';
import 'package:a13_proje/widgets/poke_information.dart';
import 'package:a13_proje/widgets/poke_type_name.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:a13_proje/pages/poke_type_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    debugPrint('poekemon : ${pokemon.img}');
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                iconSize: 24
                    .w, //  36.r: genişlik ve yükseklikten hangisi küçükse ona göre işlem yapar
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              //  PokeNameType()
            ),
            PokeNameType(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    pokeballImageUrl,
                    height: 0.15.sh,
                    fit: BoxFit.fitHeight,
                  ),
                  right: 0,
                  top: 50,
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.12.sh,
                    child: PokeInformation(pokemon: pokemon)),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height: 0.25,
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
