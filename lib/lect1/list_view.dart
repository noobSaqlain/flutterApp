import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});

  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> images = [
        "images/dog.jpg",
        "images/city.jpg",
        "images/light.jpg",
        "images/nature.jpg",
      ],
      titles = ["DOG", "CITY", "LIGHT", "NATURE"],
      subtitles = [
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
        itemCount: images.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage(images[index]), // changes made here here
          ),
          title: Text(titles[index]),
          subtitle: Text(subtitles[index]),
          trailing: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
