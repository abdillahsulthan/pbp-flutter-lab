import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/view/navbar.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/view/detail_movie.dart';
import 'package:counter_7/data/data_watchlist.dart';

class MyWatchlistView extends StatefulWidget {
  const MyWatchlistView({super.key});

  @override
  State<MyWatchlistView> createState() => _MyWatchlistViewState();
}

class _MyWatchlistViewState extends State<MyWatchlistView> {
  late DataWatchlist dataMovie;
  late Future<List<Watchlist>> _watchlist;

  Color colorWatched(Watched status) {
    if (status == Watched.belum) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  bool checkStatusWatched(Watched status) {
    if (status == Watched.belum) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void initState() {
    dataMovie = DataWatchlist();
    _watchlist = dataMovie.fetchWatchlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const NavbarApp(),
        body: FutureBuilder(
            future: _watchlist,
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
                    itemBuilder: (context, index) {
                      Watchlist movie = snapshot.data[index];
                      return Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: colorWatched(movie.fields.watched)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 32, bottom: 32, left: 16, right: 16),
                            child: ListTile(
                                title: Text(movie.fields.title,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailMovie(
                                                index: index,
                                                movie: snapshot.data[index],
                                              )));
                                },
                                trailing: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Row(children: [
                                      Expanded(
                                          child: CheckboxListTile(
                                        value: checkStatusWatched(
                                            movie.fields.watched),
                                        onChanged: (newValue) {
                                          setState(() {
                                            if (movie.fields.watched ==
                                                Watched.sudah) {
                                              movie.fields.watched =
                                                  Watched.belum;
                                              colorWatched(Watched.belum);
                                            } else {
                                              movie.fields.watched =
                                                  Watched.sudah;
                                              colorWatched(Watched.sudah);
                                            }
                                          });
                                        },
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      )),
                                    ]))),
                          ));
                    },
                    itemCount: snapshot.data.length,
                  );
                }
              }
            }));
  }
}
