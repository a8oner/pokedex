
import 'dart:convert';

import 'package:a13_proje/model/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class PokeApi{


   static const String _url='https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  static Future<List<PokemonModel>>getPokemonData()async{
     List<PokemonModel> _list=[];
     var result= await Dio().get(_url);
     var pokeList=jsonDecode(result.data)['pokemon'];
     debugPrint(pokeList.toString());

     if(pokeList is List){
       _list=pokeList.map((e) => PokemonModel.fromJson(e)).toList();
     }else{
       return [];
     }

     return _list;
  }

}