import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

class CoinLogoWidget extends StatelessWidget {
  final DataModel coin;
  const CoinLogoWidget({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";

    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      height: 96.0,
      width: 96.0,
      //78 Remaining
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,  // Изменил цвет фона
              borderRadius: BorderRadius.circular(25.0),  // Добавил скругление углов
            ),
            child: CachedNetworkImage(
              imageUrl: ((coinIconUrl + coin.symbol + ".png").toLowerCase()),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  SvgPicture.asset('assets/icons/dollar.svg'),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            coin.symbol,
            style: TextStyle(
              color: Colors.white,  // Изменил цвет текста
              fontSize: 14.0,  // Изменил размер шрифта
              fontWeight: FontWeight.bold,  // Сделал текст жирным
            ),
          ),
          const SizedBox(height: 2.0),
          Text(
            "\$" + coin.quoteModel.usdModel.price.toStringAsFixed(2),
            style: TextStyle(
              color: Colors.white,  // Изменил цвет текста
              fontSize: 12.0,  // Изменил размер шрифта
            ),
          ),
        ],
      ),
    );
  }
}
