import 'package:a13_proje/constant/constant.dart';
import 'package:a13_proje/constant/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl='images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeighet(),
      child: Stack(
        children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Align(
                  alignment:Alignment.centerLeft,
                  child: Text(Constant.title,style: Constant.getTitleTextStyle(),)),
            ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
                pokeballImageUrl,
              width: ScreenUtil().orientation==Orientation.portrait ? 0.2.sh : 0.2.sw,
                fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
