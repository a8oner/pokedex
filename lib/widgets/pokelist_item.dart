import 'package:a13_proje/constant/constant.dart';
import 'package:a13_proje/constant/ui_helper.dart';
import 'package:a13_proje/model/pokemon_model.dart';
import 'package:a13_proje/pages/detail_page.dart';
import 'package:a13_proje/widgets/poke_img_and_ball.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(//Inkwell ile tıklanılma özelliği kazandırıldı
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]), //Cardın rengini pokemona göre ayarlama
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(pokemon.name ?? 'N/A',style: Constant.getPokemonNameTextStyle(),), // null is N/A yazdır
            Chip(label: Text(pokemon.type![0])),
              PokeImageAndBall(pokemon: pokemon),
          ],),
        ),
      ),
    );
  }
}
