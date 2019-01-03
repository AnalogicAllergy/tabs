import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[listTileToppen()],
        ),
      ),
    ));
  }
}

Widget listTileToppen() {
  return Column(
    children: <Widget>[
      const ListTile(
        leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://abrilboaforma.files.wordpress.com/2016/09/mascara-cabelo-casa-efeito-salao_0.jpg")),
        title: Text("Procedimento 01"),
        subtitle: Text("Este procedimento blablabla"),
      ),
      ButtonTheme.bar(
        child: ButtonBar(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  debugPrint("Yass");
                },
                child: const Text("AGENDAR"))
          ],
        ),
      )
    ],
  );
}
