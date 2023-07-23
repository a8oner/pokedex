import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constant{
  Constant._(); //gizli olacak yani burdan nesne üretilemez

   static String title='Pokedex';
   static TextStyle getTitleTextStyle(){
     return TextStyle(
         color: Colors.white,fontSize: _calculateFontSize(48),fontWeight: FontWeight.bold,

     );
   }
  static TextStyle getPokemonNameTextStyle(){
    return TextStyle(
      color: Colors.white,fontSize: _calculateFontSize(24),fontWeight: FontWeight.bold,

    );
  }
  static TextStyle getTypeChipTextStyle(){
    return TextStyle(
      color: Colors.white,fontSize: _calculateFontSize(20),

    );
  }
  static _calculateFontSize(int size){
    //Telefon ayarlarından yazı boyutu büyütülmesi durumunda otomatik olarak uygulamada da değişiklik yapmak için ayarlandı.
     if(ScreenUtil().orientation==Orientation.portrait){
       return size.sp;
     }else{
       return (size*1.5).sp;
     }
  }
  static getPokeInfoLabelTextStyle(){
    return TextStyle(fontSize: _calculateFontSize(20),fontWeight: FontWeight.bold,color: Colors.black45);
  }
  static getPokeInfoTextStyle(){
     return TextStyle(fontSize: _calculateFontSize(16),color: Colors.black45);
  }
}