import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

class CoinDetailAppBar extends StatelessWidget {
  final DataModel coin;
  final String coinIconUrl;
  const CoinDetailAppBar({
    super.key,
    required this.coin,
    required this.coinIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0)),
      pinned: true,
      snap: true,
      floating: true,
      expandedHeight: 280.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 4.4, 0.0),
          width: double.infinity,
          height: 56.0,
          child: ListTile(
            leading: Container(
              height: 40.0,
              width: 40.0,
              child: CachedNetworkImage(
                imageUrl: ((coinIconUrl + coin.symbol + ".png").toLowerCase()),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    SvgPicture.asset('assets/icons/dollar.svg'),
              ),
            ),
            title: Text(
              coin.name + " #" + coin.cmcRank.toString(),
              style: Theme.of(context).textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        collapseMode: CollapseMode.parallax,
      ),
    );
  }
}