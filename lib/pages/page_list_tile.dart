import 'package:flutter/material.dart';
import 'package:scroll/models/activite.dart';

class PageListTile extends StatefulWidget {
  const PageListTile({Key? key}) : super(key: key);

  @override
  _PageListTileState createState() => _PageListTileState();
}

class _PageListTileState extends State<PageListTile> {
  ScrollController _controller = ScrollController();

  List<Activite> activites = [
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Arcade", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
  ];

  @override
  void initState() {
    _controller.addListener(listener);
    super.initState();
  }

  void listener(){
    print("Postiion = ${_controller.position.pixels} | Max = ${_controller.position.maxScrollExtent}");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView.builder(
          itemCount: activites.length,
          controller: _controller,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("Activité:"),
              subtitle: Text(activites[index].nom),
              trailing: Icon(activites[index].icone),
              leading: Icon(activites[index].icone),
              onTap: (){
                print(activites[index].nom);
              },
            );
          },
        )
    );
  }

}
