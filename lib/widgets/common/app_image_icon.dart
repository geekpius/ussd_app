import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AppImageIcon extends StatelessWidget {
  const AppImageIcon( this.assetName, {
    Key? key,
    this.height,
    this.width,
    this.size,
    this.fit,
    this.shape = BoxShape.rectangle,
  }) : assert((height != null && width!= null) || size != null),
        super(key: key);

  final String assetName;
  final double? height;
  final double? width;
  final double? size;
  final BoxFit? fit;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?? height,
      width: size?? width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$kImagePath/$assetName'),
          fit: fit?? BoxFit.cover,
        ),
        shape: shape,
      ),
    );
  }
}
