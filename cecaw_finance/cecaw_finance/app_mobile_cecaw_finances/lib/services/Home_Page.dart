import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'credit/Form_Credit.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        Menu(),
      ]),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var titleList = [
    "Cartes Prépayées",
    "Crédit",
    "Comptes",
    "Assurances",
    "Epargne"
  ];

  var descList = [
    "Achetez vos cartes prépayées chez nous et nous vous accompagnons dans l'utilisation et vos cartes. Nous sommes spécialisés dans l'utilisation de différentes cartes pour vous permettre de faciliter vos transactions",
    "La principale source de revenus de la CECAW c’est le crédit. Pour satisfaire les besoins d’une large proportion de la population, nous avons conçu une gamme assez diversifiée de produits relatifs au crédit.",
    "Nous distinguons plusieurs types de compte: Compte d’épargne: Il permet au membre de garder de l’argent en vue d’augmenter son fonds de commerce ou de réaliser un projet futur. Il peut également servir...",
    "NOS SOLUTIONS D’ASSURANCE. Elles concernent l’offre globale d’assurances que vous retrouverez sur nos guichets. Vous êtes inquiets sur votre capacité à prendre en charge un éventuel cas de maladie ..",
    "La principale source de revenus de la CECAW c’est le crédit. Pour satisfaire les besoins d’une large proportion de la population, nous avons conçu une gamme assez diversifiée de produits relatifs au crédit..."
  ];

  var imagesList = [
    "images/carte prépayée.jpg",
    "images/crédit.jpg",
    "images/compte.jpg",
    "images/assurances.jpg",
    "images/epargne&.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Home Page',
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
        ),
        body: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // showDialogFunc(context, imagesList[index], titleList[index],
                //   descList[index]);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormCredit(),
                  ),
                );
              },
              child: Card(
                  child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(imagesList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index].toUpperCase(),
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: width,
                            child: Text(
                              descList[index],
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ))
                      ],
                    ),
                  )
                ],
              )),
            );
          },
        ));
  }
}

showDialogFunc(context, images, title, desc) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      images,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
