import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataWatchlist {
  Future<List<Watchlist>> fetchWatchlist() async {
    var url = 'https://webnyakatabtugas2.herokuapp.com/mywatchlist/json/';
    List<Watchlist> watchlist = [];
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var watchlistJson = json.decode(response.body);
      for (var movie in watchlistJson) {
        watchlist.add(Watchlist.fromJson(movie));
      }
    }
    return watchlist;
  }
}
