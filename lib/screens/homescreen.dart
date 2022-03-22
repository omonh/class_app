import 'package:class_app/data/songs.dart';
import 'package:class_app/screens/lyrics_screen.dart';
import 'package:flutter/material.dart';
import '../data/songs.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My favorite music ')),
      body: Songlist(),
    );
  }
}

class Songlist extends StatelessWidget {
  const Songlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songsTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songsTitles[index]),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
              print(songsTitles[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricsScreen(
                    id: index,
                    songTitle: songsTitles[index],),

                ),
              );
            },
          ),
        );
      },
    );
  }
}
