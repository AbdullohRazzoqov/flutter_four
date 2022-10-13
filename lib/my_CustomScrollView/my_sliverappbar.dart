import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: const Text(
              "Sliver App Bar",
              style: TextStyle(color: Colors.white),
            ),
            // backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "title",
                style: TextStyle(color: Colors.white),
              ),
              background: Image.network(
                "https://source.unsplash.com/random",
                fit: BoxFit.cover,
              ),
            ),
            //? expandedHeight => SliverAppBarning uzunlig
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            //? pinned true bo'lsa, pastga turganda yuqolib ketmay pinned bo'lib qoladi
            pinned: false,
            //? floating => yuqoriga chiqgandan keyin pastga tortganda birdan chiqadi
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              ([
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 300,
                    width: 150,
                    color: Colors.cyanAccent,
                  ),
                ),
                Container(
                  height: 300,
                  width: 150,
                  color: Colors.redAccent,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 300,
                    width: 150,
                    color: Colors.cyanAccent,
                  ),
                ),
                Container(
                  height: 300,
                  width: 150,
                  color: Colors.yellowAccent,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
