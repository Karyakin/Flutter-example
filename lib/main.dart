// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String asetsNamePath = 'assets/images/Photo1.jpg';
    final String asetsNamePathSVG = 'assets/photoSVG.svg';
    final String assetsNameUrl =
        'https://weblinks.ru/wp-content/uploads/2022/02/Krasivye-kartinki-leta-na-zastavku-telefona-1.jpg';

    Image imageFromNetwork = Image.network(assetsNameUrl);

    //For imageFromNetwork
    //
    Image changedImage = Image(
      image: imageFromNetwork.image,
      color: Colors.green,
      colorBlendMode: BlendMode.difference,
    );

    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(asetsNamePathSVG, fit: BoxFit.cover);
    //AssetImage assetImage = AssetImage(asetsNamePath);
    //for assetImage
    //
    // return Container(
    //   constraints: BoxConstraints.expand(height: double.infinity),
    //   child: Image(
    //     image: assetImage,
    //   ),
    // );

    //Image assetImage = Image.asset(asetsNamePathSVG,fit: BoxFit.cover);
    // for assetImage
    //
    // return Container(
    //     constraints: BoxConstraints.expand(height: double.infinity),
    //     child: assetImage);

    // for imageFromNetwork
    //
    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromAssetSvg,
    );
  }
}


// https://www.youtube.com/watch?v=EN-1oO8HK84&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=10&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
