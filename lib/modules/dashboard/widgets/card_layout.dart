import 'package:flutter/material.dart';
import '../widgets/card_tools.dart';
import '../../../utils/helper/is_cellphone_limit.dart';

Widget cardLayout(w, h, gridType, sizeIcon) {
  List<Widget> cards = [
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
    cardTools(w, h, gridType, sizeIcon),
  ];

  if (isCellPhoneLimite(w, h)) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
              child: Column(
            children: cards,
          ))
        ],
      ),
    );
  }
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: cards,
        ),
      ),
    ],
  );
}
