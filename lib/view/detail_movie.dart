import 'package:counter_7/view/navbar.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/view/mywatchlist_view.dart';

class DetailMovie extends StatelessWidget {
  final int index;

  const DetailMovie({super.key, required this.index});

  String checkStatus(Watched status) {
    if (status == Watched.belum) {
      return "Belum";
    } else {
      return "Sudah";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      drawer: const NavbarApp(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Center(
            child: Text(Watchlist.movieList[index].fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Release Date: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(Watchlist.movieList[index].fields.releaseDate,
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Rating: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(Watchlist.movieList[index].fields.rating.toString(),
                    style: const TextStyle(fontSize: 20)),
                const Text("/5", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Status: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(checkStatus(Watchlist.movieList[index].fields.watched),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text("Review:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(Watchlist.movieList[index].fields.review,
                style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyWatchlistView()));
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}
