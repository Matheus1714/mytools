import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';
import '../../../utils/helper/get_grid_type_card.dart';
import '../../../utils/helper/adjust_icon_dimension.dart';
import '../widgets/card_layout.dart';

class ListTools extends StatefulWidget {
  @override
  _ListToolsState createState() => _ListToolsState();
}

class _ListToolsState extends State<ListTools> {
  double _widthScreen;
  double _heightScreen;
  int _gridType;
  double _sizeIcon;

  void setSizeIcon(double w, double h) {
    this.setState(() {
      _sizeIcon = adjustIconDimension(w, h);
    });
  }

  void setGridType(double w, double h) {
    this.setState(() {
      _gridType = getGridTypeCard(w, h);
    });
  }

  void setLengthScreen(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    this.setState(() {
      _widthScreen = w;
      _heightScreen = h;
    });
  }

  @override
  Widget build(BuildContext context) {
    setLengthScreen(context);
    setGridType(_widthScreen, _heightScreen);
    setSizeIcon(_widthScreen, _heightScreen);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('MyTools'),
        centerTitle: true,
      ),
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: <Color>[
        //         DefaultColors.whiteColor,
        //         DefaultColors.secondaryVioletColor
        //       ]
        //     ),
        //   ),
        child: cardLayout(_widthScreen, _heightScreen, _gridType, _sizeIcon),
      ),
    );
  }
}
