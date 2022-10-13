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
          //!
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: MySliverListElement(),
          ),
          //!
          MySliverFixedExtentList(),
          //!
          MySliverGred(),
          //!
          MySliverToBoxAdapter(),
        ],
      ),
    );
  }

  SliverToBoxAdapter MySliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.cyan,
            ),
          ),
          itemCount: 60,
        ),
      ),
    );
  }

  SliverGrid MySliverGred() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((_, __) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.green,
          ),
        );
      }, childCount: 4),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }

  SliverFixedExtentList MySliverFixedExtentList() {
    return SliverFixedExtentList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.teal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.teal,
            ),
          )
        ]),
        itemExtent: 300);
  }

  SliverList MySliverListElement() {
    return SliverList(
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
    );
  }
}
