import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});

  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var images = [
    "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
    "https://fastly.picsum.photos/id/242/200/200.jpg?hmac=Z3aa8zbEQkEMFgnVh0Pn96vmCZHhJ17qzCrePYksrcY",
    "https://fastly.picsum.photos/id/953/200/200.jpg?hmac=S5zbAl9YqUc02Oezl6cR8gcLfF3pwkQ5_AcG8JXjeC0",
    "https://fastly.picsum.photos/id/772/200/200.jpg?hmac=9euSj4JHTPr7uT5QWVmeNJ8JaqAXY8XmJnYfr_DfBJc"
  ];
  var titles = ["DOG", "CITY", "LIGHT", "NATURE"];
  var subtitles = [
    "good dog it is",
    "big city",
    "bright light",
    "nature is amazing"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(images[index]),
          ),
          title: Text(titles[index]),
          subtitle: Text(subtitles[index]),
          trailing: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
