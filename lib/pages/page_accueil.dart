import 'package:first_app/model_ui/model_ui_barrRecherche.dart';
import 'package:first_app/model_ui/model_ui_discussion.dart';
import 'package:flutter/material.dart';

import '../model_ui/model_ui_profil.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> _listeImages = const [
    "https://www.gatesfoundation.org/-/media/gfo/3about/3people/ga311881_bill_gates.jpg?rev=010c433f329e4818ba412ec713c888d6",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUKiKlbaKKmC3n9wShiJ8dJtHynNjcGOh1YQ&s",
    "https://media.marianne.net/assets/asFWg5Zpullh2vVFl.jpg?w=770&h=462&r=fill",
    "https://cdn.futura-sciences.com/sources/images/Jeff%20bezos.jpg",
    "https://business-cool.com/wp-content/uploads/2023/01/Elon_Musk_Royal_Society-e1681813122429-1296x700.jpg",
    "https://www.lexpress.fr/resizer/v2/HFVBPIK7BZHIXJRPVK4OYAT2DI.jpg?auth=ee991253112c5e6f92fd9e59bae4c2ed8defc14b0d9d2ed45945217f8ad8fced&width=1200&height=630&quality=85&focal=994%2C594",
    "https://www.gatesfoundation.org/-/media/gfo/3about/3people/ga311881_bill_gates.jpg?rev=010c433f329e4818ba412ec713c888d6",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUKiKlbaKKmC3n9wShiJ8dJtHynNjcGOh1YQ&s",
    "https://media.marianne.net/assets/asFWg5Zpullh2vVFl.jpg?w=770&h=462&r=fill",
    "https://cdn.futura-sciences.com/sources/images/Jeff%20bezos.jpg",
    "https://business-cool.com/wp-content/uploads/2023/01/Elon_Musk_Royal_Society-e1681813122429-1296x700.jpg",
    "https://www.lexpress.fr/resizer/v2/HFVBPIK7BZHIXJRPVK4OYAT2DI.jpg?auth=ee991253112c5e6f92fd9e59bae4c2ed8defc14b0d9d2ed45945217f8ad8fced&width=1200&height=630&quality=85&focal=994%2C594",
  ];

  final List<String> _listeUserNames = const [
    'Bill Gates',
    'Mark Zuckerberg',
    'Elon Musk',
    'Vladimir Putin',
    'Jeff Bezos',
    'Bill Gates',
    'Mark Zuckerberg',
    'Elon Musk',
    'Vladimir Putin',
    'Jeff Bezos',
    'Dimas',
    'Bertrand'
  ];

  @override
  Widget build(BuildContext context) {
    //Color couleurBleu = Colors.blue;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //backgroundColor: Colors.blue,
        //drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              /* const DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.red),
                child: Text('Drawer'),
              ),*/
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('Partager'),
              )
            ],
          ),
        ),
        // Bar d'application
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          //leadingWidth: 50,
          //toolbarHeight: 45,
          // icon menu
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  // on appuie sur le menu
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.menu, color: Colors.black)),
              );
            }),
          ),

          // titre
          title: const Text("Discussions"),

          // icon edit
          actions: [
            CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.edit, color: Colors.black)),
          ],
        ),
        //corps de l'application
        body: SizedBox(
          height: screenHeight,
          child: ListView(children: [
            // espace
            const SizedBox(
              height: 20,
            ),

            // barre de recherche
            ModelBarrrecherche(),

            //espace
            const SizedBox(
              height: 20,
            ),

            // liste des contacts en ligne
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ModelProfil(
                    imgPath:
                        "https://www.gatesfoundation.org/-/media/gfo/3about/3people/ga311881_bill_gates.jpg?rev=010c433f329e4818ba412ec713c888d6",
                    userName: "Bill Gate",
                  ),
                  ModelProfil(
                    imgPath:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUKiKlbaKKmC3n9wShiJ8dJtHynNjcGOh1YQ&s",
                    userName: "Putin",
                  ),
                  ModelProfil(
                    imgPath:
                        "https://media.marianne.net/assets/asFWg5Zpullh2vVFl.jpg?w=770&h=462&r=fill",
                    userName: "Mark Zuckerberg",
                  ),
                  ModelProfil(
                    imgPath:
                        "https://cdn.futura-sciences.com/sources/images/Jeff%20bezos.jpg",
                    userName: "Jeff Bezos",
                  ),
                  ModelProfil(
                    imgPath:
                        "https://business-cool.com/wp-content/uploads/2023/01/Elon_Musk_Royal_Society-e1681813122429-1296x700.jpg",
                    userName: "Elon Musk",
                  ),
                  ModelProfil(
                    imgPath:
                        "https://www.lexpress.fr/resizer/v2/HFVBPIK7BZHIXJRPVK4OYAT2DI.jpg?auth=ee991253112c5e6f92fd9e59bae4c2ed8defc14b0d9d2ed45945217f8ad8fced&width=1200&height=630&quality=85&focal=994%2C594",
                    userName: "Donald Trump",
                  ),
                ],
              ),
            ),

            //espace
            const SizedBox(
              height: 0,
            ),
            // ma liste des discussions

            SizedBox(
              height: 400,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _listeUserNames.length,
                  itemBuilder: (context, index) {
                    print('hauteur : $screenHeight\nLargeur : $screenWidth');
                    return ModelDiscussion(
                        imgPath: _listeImages[index],
                        userName: _listeUserNames[index]);
                  }),
            )
          ]),
        ));
  }
}
