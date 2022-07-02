import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Services_credit.dart';

class FormCredit extends StatefulWidget {
  const FormCredit({Key? key}) : super(key: key);

  @override
  State<FormCredit> createState() => _FormCreditState();
}

class _FormCreditState extends State<FormCredit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 242, 210),
        centerTitle: true,
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
          'Formulaire d\'enregistrement',
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Text(
            'Remplissez les Informations suivantes',
            style: GoogleFonts.raleway(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom de famille'.toUpperCase(),
                  hintText: 'Entrer votre nom de famille',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prenom'.toUpperCase(),
                  hintText: 'Entrer votre Prénom',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Telephone'.toUpperCase(),
                  hintText: 'Entrer numero Téléphone',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Date de naissance'.toUpperCase(),
                  hintText: 'Entrer date de naissance',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Numero CNI'.toUpperCase(),
                  hintText: 'Entrer N° CNI',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ville de residence'.toUpperCase(),
                  hintText: 'Entrer la ville de residence',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nationalite'.toUpperCase(),
                  hintText: 'Veillez saisir votre nationalité',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Quartier de residence'.toUpperCase(),
                  hintText: 'Entrer votre quartier de residence',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Profession'.toUpperCase(),
                  hintText: 'Entrer votre Profession',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'date'.toUpperCase(),
                  hintText: 'Entrer votre Profession',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Civilite'.toUpperCase(),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'type de compte'.toUpperCase(),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    'Soumettre'.toUpperCase(),
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormCredit(),
                  ),
                );*/
                  }),
            ],
          ),
        )
      ]),
    );
  }
}
