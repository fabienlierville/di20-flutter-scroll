import 'package:flutter/material.dart';
import 'package:scroll/models/activite.dart';

class PageGridOrientation extends StatefulWidget {
  const PageGridOrientation({Key? key}) : super(key: key);

  @override
  _PageGridOrientationState createState() => _PageGridOrientationState();
}

class _PageGridOrientationState extends State<PageGridOrientation> {
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

  Orientation? orientation;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          title: Text("List Grid Orientation"),
        ),
        body: bodynamic()
    );
  }


  Widget bodynamic(){
    if(orientation == null || orientation == Orientation.landscape ){
      return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: activites.length,
          itemBuilder: (context, index){
            Activite activite = activites[index];
            return Card(
              elevation: 3.0,
              child: InkWell(
                onTap: (){
                  print("Activite : ${activite.nom}");
                },
                child: Dismissible(
                  key: Key(activite.nom),
                  child: GridTile(
                    header: Text("Activité", textAlign: TextAlign.center,),
                    child: Icon(activite.icone, size: 40,),
                    footer: Text(activite.nom, textAlign: TextAlign.center, style: TextStyle(color: Colors.blue),),
                  ),
                ),
              ) ,
            ) ;
          }
      );
    }else{
      return ListView.separated(
        itemCount: activites.length,
        controller: _controller,
        itemBuilder: (context, index){
          Activite activite = activites[index];

          return Dismissible(
            key: Key(activite.nom),
            child: ListTile(
              title: Text("Activité:"),
              subtitle: Text(activite.nom),
              trailing: Icon(activite.icone),
              leading: Icon(activite.icone),
              onTap: (){
                print(activite.nom);
              },
            ),
            onDismissed: (direction){
              print(direction.toString());
              setState(() {
                activites.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Supprimer", style: TextStyle(color: Colors.white),),
                  Icon(Icons.delete, color: Colors.white,)
                ],
              ),
            ),
            secondaryBackground: Container(color: Colors.green,),
          );

        },
        separatorBuilder: (context, index){
          if(index % 5 == 0){
            return Divider(color: Colors.red,);
          }
          return Container();

        },
      );
    }



  }
}
