import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';
import '../../../utils/helper/lengths_card.dart';

Card cardTools(double w, double h, int gridType, double sizeIcon) {
  double cardWidth;
  double cardHeight;
  List<double> cardLengths;

  cardLengths = lengthsCard(w, h);

  cardWidth = cardLengths[0];
  cardHeight = cardLengths[1];

  return Card(
    color: DefaultColors.secondaryVioletColor,
    child: InkWell(
      splashColor: DefaultColors.primaryVioletColor,
      onTap: () {},
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
            Container(
              child: Center(
                child: Icon(
                  Icons.favorite,
                  size: 140 * sizeIcon,
                  color: DefaultColors.primaryYellowColor,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: DefaultColors.primaryVioletColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Example',
                      style: TextStyle(
                        color: DefaultColors.whiteColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ldkfjsldkfjsldkfj sdfl ksdjflsdj flksdjflksdj flsdj f',
                      style: TextStyle(
                        color: DefaultColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
