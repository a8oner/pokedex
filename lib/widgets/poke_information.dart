import 'package:a13_proje/constant/constant.dart';
import 'package:a13_proje/constant/ui_helper.dart';
import 'package:a13_proje/model/pokemon_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
        color: Colors.red,
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pokemon.name.toString()),
            _buildInformationRow('Height', pokemon.height.toString()),
            _buildInformationRow('Weight', pokemon.weight.toString()),
            _buildInformationRow('Spawn Time', pokemon.spawnTime.toString()),
            _buildInformationRow('Weakness', pokemon.weaknesses.toString()),
            _buildInformationRow(
                'Pre Evolution', pokemon.prevEvolution.toString()),
            _buildInformationRow(
                'Next Evolution', pokemon.nextEvolution.toString()),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, String value) {
    //döndüreceği değer dynamic çünkü ne döndüreceğini bilmiyoruz
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constant.getPokeInfoLabelTextStyle(),
        ),
        Text(
          value,
          style: Constant.getPokeInfoTextStyle(),
        ),
        /*
    if(value is List && value.isNotEmpty) 
    Text(value.join(' , ')), //join Listelerde sıralama yapmaya yarar .Burda listedeki değerler arasına [ , ] eklendi
    else if(value== null)
    Text('Not available'),
    else Text(value),
  */
      ],
    );
  }
}
