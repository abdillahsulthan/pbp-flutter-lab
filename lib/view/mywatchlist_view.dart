import 'dart:convert';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/view/navbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/view/detail_movie.dart';

class MyWatchlistView extends StatefulWidget {
  const MyWatchlistView({super.key});

  @override
  State<MyWatchlistView> createState() => _MyWatchlistViewState();
}

class _MyWatchlistViewState extends State<MyWatchlistView> {
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
    Watchlist.movieList.addAll(watchlist);
    return watchlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const NavbarApp(),
        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada Watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    "${snapshot.data![index].fields.title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailMovie(index: index)));
                                  },
                                )
                              ],
                            ),
                          ));
                }
              }
            }));
  }
}
