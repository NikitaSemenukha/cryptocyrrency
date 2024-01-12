/*
* "data": [
        {
            "id": 1,
            "name": "Bitcoin",
            "symbol": "BTC",
            "slug": "bitcoin",
            "num_market_pairs": 10704,
            "date_added": "2010-07-13T00:00:00.000Z",
            "tags": [
                "mineable",
                "pow",
                "sha-256",
                "store-of-value",
                "state-channel",
                "coinbase-ventures-portfolio",
                "three-arrows-capital-portfolio",
                "polychain-capital-portfolio",
                "binance-labs-portfolio",
                "blockchain-capital-portfolio",
                "boostvc-portfolio",
                "cms-holdings-portfolio",
                "dcg-portfolio",
                "dragonfly-capital-portfolio",
                "electric-capital-portfolio",
                "fabric-ventures-portfolio",
                "framework-ventures-portfolio",
                "galaxy-digital-portfolio",
                "huobi-capital-portfolio",
                "alameda-research-portfolio",
                "a16z-portfolio",
                "1confirmation-portfolio",
                "winklevoss-capital-portfolio",
                "usv-portfolio",
                "placeholder-ventures-portfolio",
                "pantera-capital-portfolio",
                "multicoin-capital-portfolio",
                "paradigm-portfolio",
                "bitcoin-ecosystem",
                "ftx-bankruptcy-estate"
            ],
            "max_supply": 21000000,
            "circulating_supply": 19596668,
            "total_supply": 19596668,
            "infinite_supply": false,
            "platform": null,
            "cmc_rank": 1,
            "self_reported_circulating_supply": null,
            "self_reported_market_cap": null,
            "tvl_ratio": null,
            "last_updated": "2024-01-12T14:41:00.000Z",
            "quote": {
                "USD": {
                    "price": 45423.95735704758,
                    "volume_24h": 39159909458.438614,
                    "volume_change_24h": -26.918,
                    "percent_change_1h": -0.62425486,
                    "percent_change_24h": -5.85951487,
                    "percent_change_7d": 3.9051191,
                    "percent_change_30d": 9.91741631,
                    "percent_change_60d": 23.56216462,
                    "percent_change_90d": 69.01600518,
                    "market_cap": 890158211572.2189,
                    "market_cap_dominance": 50.457,
                    "fully_diluted_market_cap": 953903104498,
                    "tvl": null,
                    "last_updated": "2024-01-12T14:41:00.000Z"
                }
            }
        },
      ]
        * */


import 'models.dart';

class DataModel {
  final int id;
  final String name;
  final String symbol;
  final String slug;
  final int numMarketPairs;
  final String dateAdded;
  final List<dynamic> tags;
  final int maxSupply;
  final num circulatingSupply;
  final num totalSupply;

  final int cmcRank;
  final String lastUpdated;
  final QuoteModel quoteModel;

  DataModel(
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.numMarketPairs,
      this.dateAdded,
      this.tags,
      this.maxSupply,
      this.circulatingSupply,
      this.totalSupply,
      this.cmcRank,
      this.lastUpdated,
      this.quoteModel);
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      json["id"],
      json["name"],
      json["symbol"],
      json["slug"],
      json["num_market_pairs"],
      json["date_added"],
      json["tags"],
      json["max_supply"] == null ? 0 : json["max_supply"],
      json["circulating_supply"],
      json["total_supply"],
      json["cmc_rank"],
      json["last_updated"],
      QuoteModel.fromJson(json["quote"]),
    );
  }
}