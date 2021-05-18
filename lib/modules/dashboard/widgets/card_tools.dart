import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';
import '../../../utils/helper/lengths_card.dart';
import './icon_tools.dart';
import './text_box_card.dart';

Card cardTools(double w, double h, int gridType, double sizeIcon) {
  double cardWidth;
  double cardHeight;
  List<double> cardLengths;

  cardLengths = lengthsCard(w, h);

  cardWidth = cardLengths[0];
  cardHeight = cardLengths[1];

  return Card(
    color: DefaultColors.secondaryVioletColor,
    child: SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: GridView.count(
        crossAxisCount: gridType,
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        childAspectRatio: 1.8,
        children: [
          iconTools(sizeIcon),
          textBoxCard()
        ],
      ),
    ),
  );
}
